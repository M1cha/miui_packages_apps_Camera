.class Lcom/android/gallery3d/ui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mWasCameraCenter:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 558
    new-instance v0, Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 562
    return-void
.end method

.method private drawTileView(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 20
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v7

    .line 656
    .local v7, imageScale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v5

    .line 657
    .local v5, viewW:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v6

    .line 658
    .local v6, viewH:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 659
    .local v3, cx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 660
    .local v4, cy:F
    const/high16 v16, 0x3f80

    .line 662
    .local v16, scale:F
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v10

    .line 664
    .local v10, filmRatio:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-nez v2, :cond_4

    const/high16 v2, 0x3f80

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->inOpeningAnimation()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v17, 0x1

    .line 666
    .local v17, wantsCardEffect:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f80

    cmpl-float v2, v10, v2

    if-nez v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v19, v6, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/16 v18, 0x1

    .line 668
    .local v18, wantsOffsetEffect:Z
    :goto_1
    if-eqz v17, :cond_7

    .line 670
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    .line 671
    .local v11, left:I
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 672
    .local v14, right:I
    #calls: Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F
    invoke-static {v11, v14, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2400(III)F

    move-result v13

    .line 673
    .local v13, progress:F
    const/high16 v2, -0x4080

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    invoke-static {v13, v2, v0}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v13

    .line 677
    const/4 v2, 0x0

    cmpg-float v2, v13, v2

    if-gez v2, :cond_0

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F
    invoke-static {v2, v13}, Lcom/android/gallery3d/ui/PhotoView;->access$2500(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v16

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v2, v13}, Lcom/android/gallery3d/ui/PhotoView;->access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    .line 680
    .local v8, alpha:F
    const/high16 v2, 0x3f80

    move/from16 v0, v16

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v10, v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v16

    .line 681
    const/high16 v2, 0x3f80

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v10, v8, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v8

    .line 683
    mul-float v7, v7, v16

    .line 684
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 687
    sub-int v2, v14, v11

    if-gt v2, v5, :cond_6

    .line 690
    int-to-float v2, v5

    const/high16 v19, 0x4000

    div-float v9, v2, v19

    .line 697
    .local v9, cxPage:F
    :goto_2
    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v10, v9, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v3

    .end local v8           #alpha:F
    .end local v9           #cxPage:F
    .end local v11           #left:I
    .end local v13           #progress:F
    .end local v14           #right:I
    :cond_0
    :goto_3
    move-object/from16 v2, p0

    .line 706
    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 710
    const/high16 v2, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v19, 0x3f00

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    const/high16 v19, 0x3f00

    add-float v2, v2, v19

    float-to-int v15, v2

    .line 712
    .local v15, s:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    invoke-static {v2, v0, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 713
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    .line 714
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->createCameraScreenNail()Z

    move-result v2

    if-nez v2, :cond_3

    .line 715
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 723
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 724
    return-void

    .line 664
    .end local v15           #s:I
    .end local v17           #wantsCardEffect:Z
    .end local v18           #wantsOffsetEffect:Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 666
    .restart local v17       #wantsCardEffect:Z
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 695
    .restart local v8       #alpha:F
    .restart local v11       #left:I
    .restart local v13       #progress:F
    .restart local v14       #right:I
    .restart local v18       #wantsOffsetEffect:Z
    :cond_6
    sub-int v2, v14, v11

    int-to-float v2, v2

    mul-float v2, v2, v16

    const/high16 v19, 0x4000

    div-float v9, v2, v19

    .restart local v9       #cxPage:F
    goto/16 :goto_2

    .line 699
    .end local v8           #alpha:F
    .end local v9           #cxPage:F
    .end local v11           #left:I
    .end local v13           #progress:F
    .end local v14           #right:I
    :cond_7
    if-eqz v18, :cond_0

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v19, v6, 0x2

    sub-int v2, v2, v19

    int-to-float v2, v2

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v12, v2, v19

    .line 701
    .local v12, offset:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v2, v12}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    .line 702
    .restart local v8       #alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_3
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 12
    .parameter "cx"
    .parameter "cy"
    .parameter "viewW"
    .parameter "viewH"
    .parameter "scale"

    .prologue
    .line 730
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v4

    .line 731
    .local v4, imageW:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v3

    .line 732
    .local v3, imageH:I
    int-to-float v9, v4

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p1

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 733
    .local v1, centerX:I
    int-to-float v9, v3

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p2

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 735
    .local v2, centerY:I
    sub-int v5, v4, v1

    .line 736
    .local v5, inverseX:I
    sub-int v6, v3, v2

    .line 738
    .local v6, inverseY:I
    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    sparse-switch v9, :sswitch_data_0

    .line 744
    new-instance v9, Ljava/lang/RuntimeException;

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 739
    :sswitch_0
    move v7, v1

    .local v7, x:I
    move v8, v2

    .line 746
    .local v8, y:I
    :goto_0
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    move/from16 v0, p5

    invoke-virtual {v9, v7, v8, v0, v10}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    .line 747
    return-void

    .line 740
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_1
    move v7, v2

    .restart local v7       #x:I
    move v8, v5

    .restart local v8       #y:I
    goto :goto_0

    .line 741
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_2
    move v7, v5

    .restart local v7       #x:I
    move v8, v6

    .restart local v8       #y:I
    goto :goto_0

    .line 742
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_3
    move v7, v6

    .restart local v7       #x:I
    move v8, v1

    .restart local v8       #y:I
    goto :goto_0

    .line 738
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateSize()V
    .locals 4

    .prologue
    .line 594
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    .line 602
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v1, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 603
    .local v1, w:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v0, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 604
    .local v0, h:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 605
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 606
    return-void

    .line 596
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 610
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->drawTileView(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 619
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    if-eqz v3, :cond_0

    .line 637
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v1

    .line 622
    .local v1, isCenter:Z
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->canUndoLastPicture()Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 624
    .local v0, isCameraCenter:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mWasCameraCenter:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 631
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    .line 636
    :cond_2
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mWasCameraCenter:Z

    goto :goto_0

    .end local v0           #isCameraCenter:Z
    :cond_3
    move v0, v2

    .line 622
    goto :goto_1

    .line 627
    .restart local v0       #isCameraCenter:Z
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mWasCameraCenter:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V
    invoke-static {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;Z)V

    goto :goto_2
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 590
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 591
    return-void
.end method

.method public getSize()Lcom/android/gallery3d/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 571
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 573
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    .line 574
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    .line 575
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    .line 577
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 578
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 579
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 580
    return-void
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 642
    return-void
.end method
