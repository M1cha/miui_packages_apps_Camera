.class public Lcom/android/camera/ui/RulerSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "RulerSettingPopup.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/widget/ImageView;

.field private mCursorLine:Landroid/widget/ImageView;

.field private mCursorPos:[I

.field private mCursorX:I

.field private mCursors:Landroid/widget/LinearLayout;

.field private mImgCurs:[Landroid/widget/ImageView;

.field mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

.field mParamImg:Landroid/widget/LinearLayout$LayoutParams;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field private mValueCount:I

.field private mValueIndex:I

.field private mViewDrawed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mViewDrawed:Z

    .line 33
    new-instance v0, Lcom/android/camera/ui/RulerSettingPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RulerSettingPopup$1;-><init>(Lcom/android/camera/ui/RulerSettingPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/RulerSettingPopup;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/RulerSettingPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/RulerSettingPopup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/RulerSettingPopup;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;
    .param p1, "x1"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RulerSettingPopup;->filterX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/RulerSettingPopup;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;
    .param p1, "x1"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RulerSettingPopup;->indexOfPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/RulerSettingPopup;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/RulerSettingPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/RulerSettingPopup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;
    .param p1, "x1"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/RulerSettingPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/RulerSettingPopup;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    return v0
.end method

.method private addBlankViewTo(Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/LinearLayout;

    .prologue
    .line 160
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "blank":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method private addViewTo(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "res"    # I

    .prologue
    .line 152
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 154
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamImg:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    return-object v0
.end method

.method private filterX(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget p1, v0, v1

    .line 111
    .end local p1    # "x":I
    :cond_0
    :goto_0
    return p1

    .line 108
    .restart local p1    # "x":I
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-le p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    goto :goto_0
.end method

.method private indexOfPos(I)I
    .locals 5
    .param p1, "x"    # I

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "nearby":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt p1, v2, :cond_1

    .line 119
    move v1, v0

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v2, v2, v1

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_2

    .end local v1    # "nearby":I
    :goto_1
    return v1

    .line 117
    .restart local v1    # "nearby":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 8
    .param p1, "preference"    # Lcom/android/camera/IconListPreference;

    .prologue
    const/4 v6, -0x2

    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    .line 65
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 66
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v2

    .line 67
    .local v2, "iconIds":[I
    if-nez v2, :cond_0

    .line 68
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v2

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v4, 0x7f0c0092

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/RulerSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    .line 75
    const v4, 0x7f0c0094

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/RulerSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    .line 76
    const v4, 0x7f0c0093

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/RulerSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorLine:Landroid/widget/ImageView;

    .line 77
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/ui/RulerSettingPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorLine:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/ui/RulerSettingPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    array-length v4, v0

    iput v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    .line 81
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mImgCurs:[Landroid/widget/ImageView;

    .line 82
    array-length v4, v0

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    .line 85
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamImg:Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 92
    .local v3, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 93
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 95
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_2

    .line 96
    if-eqz v1, :cond_1

    .line 97
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Lcom/android/camera/ui/RulerSettingPopup;->addBlankViewTo(Landroid/widget/LinearLayout;)V

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mImgCurs:[Landroid/widget/ImageView;

    div-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    div-int/lit8 v7, v1, 0x2

    aget v7, v2, v7

    invoke-direct {p0, v6, v7}, Lcom/android/camera/ui/RulerSettingPopup;->addViewTo(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;

    move-result-object v6

    aput-object v6, v4, v5

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->reloadPreference()V

    .line 103
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 129
    iget-boolean v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mViewDrawed:Z

    if-nez v1, :cond_2

    .line 130
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    iput-boolean v7, p0, Lcom/android/camera/ui/RulerSettingPopup;->mViewDrawed:Z

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mImgCurs:[Landroid/widget/ImageView;

    div-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mImgCurs:[Landroid/widget/ImageView;

    div-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 135
    if-le v0, v7, :cond_0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v6, v0, -0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    .line 144
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 167
    iget v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    .line 171
    return-void
.end method
