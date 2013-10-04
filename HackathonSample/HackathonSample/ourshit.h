enum itemType {
    LINE
};

struct displayItem {
    public:
    itemType type;
    virtual void inc()  {}
    virtual void draw(HackathonDisplay * display) {}
    virtual bool shouldClean() {}
};

class displayLine : displayItem {
    public:
    int x0;
    int y0;
    int x1;
    int y1;
    unsigned int color;

    displayLine() {
        this->type = LINE;
    }

    void inc() {
        this->x0++;
        this->x1++;
    }

    void draw(HackathonDisplay * display) {
        display->drawLine(this->x0,
                          this->y0,
                          this->x1,
                          this->y1,
                          this->color);
    }

    bool shouldClean() {
        if (this->x0 > 31 && this->x1 > 31) return true;
        return false;
    }
};

class jumper {
    public:
    int x;
    int y;
    int xJump;
    int yDest;
    unsigned int color;

    jumper(int initY, int xColor) {
        this->color = xColor;
        this->x = 4;
        this->y = initY;
        this->xJump = 0;
        this->yDest = initY-3;
    }

    void inc(int move) {
        this->xJump++;
        if (this->xJump == 4) {
            this->y = this->yDest;
        }
        else {
            if (this->y - this->yDest > 6) {
                this->y = this->y - (this->y - this->yDest + 2);
            }
            else if (this->y - this->yDest > 4) {
                this->y = this->y - ((this->y - this->yDest)/2);
            }
        }
    }
    
    void jump(int dest) {
        //this->y = dest + 2;
        if (this->xJump == 4) {
            this->xJump = 0;
            this->yDest = dest - 2;
        }
        if (dest < this->yDest + 2) {
            this->yDest = dest - 2; 
        }
    }

    void draw(HackathonDisplay * display) {
        display->drawPixel(this->x,
                           this->y,
                           this->color);

        display->drawPixel(this->x,
                           this->y-1,
                           this->color);

        display->drawPixel(this->x+1,
                           this->y-1,
                           this->color);

        display->drawPixel(this->x-1,
                           this->y-1,
                           this->color);

        display->drawPixel(this->x,
                           this->y-2,
                           this->color);

        display->drawPixel(this->x+1,
                           this->y+1,
                           this->color);

        display->drawPixel(this->x-1,
                           this->y+1,
                           this->color);
    }
};

class Scroller {

    private:
        displayItem * itemList[32];
        int insertAt;
        
    public:
        Scroller() {
            insertAt = 0;
            for (int i=0; i<32; i++) {
                itemList[i] = NULL;
            }
        }

        void incInsertAt() {
            if (insertAt < 31) insertAt++;
            else insertAt = 0;
        }

        void addLine(int x0, int y0, int x1, int y1, unsigned int color) {
            displayLine * dl = new displayLine();
            dl->x0 = x0;
            dl->y0 = y0;
            dl->x1 = x1;
            dl->y1 = y1;
            dl->color = color;

            if (itemList[insertAt] != NULL) delete itemList[insertAt];
            itemList[insertAt] = (displayItem*)dl;
            this->incInsertAt();
        }

        void incAll() {
            for (int i=0; i<32; i++) {
                if (itemList[i] != NULL) itemList[i]->inc();
            }
        }

        void drawAll(HackathonDisplay *display) {
            for (int i=0; i<32; i++) {
                if (itemList[i] != NULL) itemList[i]->draw(display);
            }
        }

        void cleanAll() {
            for (int i=0; i<32; i++) {
                if (itemList[i] != NULL && itemList[i]->shouldClean()) {
                    Serial.println("Deleting shit");
                    delete itemList[i];
                    itemList[i] = NULL;
                }
            }
        }
};
