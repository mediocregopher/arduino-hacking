
#define heartred           matrix->Color333(0x61,0,0)
#define heartredlight      matrix->Color333(0xff,0,0)
#define heartredhighlight  matrix->Color333(0xff,0xff,0xff)

void drawHeart(RGBmatrixPanel* matrix, int x, int y, int size) {

    //Bottom left diagonal
    int j = size - 3;
    int i;
    for (i=size/2 - 1; i>0; i--) {
        matrix->drawPixel(x+i,y+j,heartred);
        for (int k=i+1; k<size-i; k++) matrix->drawPixel(x+k,y+j,heartredlight);
        if (i==1) matrix->drawPixel(x+i+1,y+j,heartredhighlight);
        j--;
    }

    //Left vertical
    matrix->drawPixel(x+i,y+j,heartred);
        for (int k=i+1; k<size-i; k++) matrix->drawPixel(x+k,y+j,heartredlight);
        matrix->drawPixel(x+i+1,y+j,heartredhighlight);
        j--;
    matrix->drawPixel(x+i,y+j,heartred);
        for (int k=i+1; k<size-i; k++) matrix->drawPixel(x+k,y+j,heartredlight);
        matrix->drawPixel(x+i+1,y+j,heartredhighlight);
        j--;
    matrix->drawPixel(x+i,y+j,heartred);
        for (int k=i+1; k<size-i; k++) matrix->drawPixel(x+k,y+j,heartredlight);
        matrix->drawPixel(x+i+1,y+j,heartredhighlight);
        j--;

    //top left diagaonal
    for (;j>0;j--) {
        i++;
        matrix->drawPixel(x+i,y+j,heartred);
        matrix->drawPixel(x+i+1,y+j,heartredhighlight);
        for (int k=i+2; k<size-i; k++) matrix->drawPixel(x+k,y+j,heartredlight);
    }

    //top left horizontal
    i++;
    int top_row_size = 0;
    for (;i<size/2-1;i++) {
        top_row_size++;
        matrix->drawPixel(x+i,y+j,heartred);
    }

    //top left middle
    j++;
    matrix->drawPixel(x+i,y+j,heartred);

    //Starting on the other half
    //top right middle
    i++;
    matrix->drawPixel(x+i,y+j,heartred);

    //top right horizontal
    i++; j--;
    for (int k=0; k<top_row_size; k++) {
        matrix->drawPixel(x+i,y+j,heartred);
        i++;
    }

    //top right diagonal
    j++;
    for (;i<size;i++) {
        matrix->drawPixel(x+i,y+j,heartred);
        j++;
    }

    //right vertical
    i--;
    matrix->drawPixel(x+i,y+j,heartred); j++;
    matrix->drawPixel(x+i,y+j,heartred);

    //bottom right diagonal
    for (;i>size/2 - 1; i--) {
        matrix->drawPixel(x+i,y+j,heartred);
        j++;
    }
}

void drawFilledHeart(RGBmatrixPanel* matrix, int x, int y, int size) {
    for (int i=0; i<size/2; i++) {
        drawHeart(matrix,x+i,y+i,size-i);
    }
}
