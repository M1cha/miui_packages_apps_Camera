.class Lcom/android/camera/FocusManagerVideo;
.super Lcom/android/camera/AbstractFocusManager;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManagerVideo$1;,
        Lcom/android/camera/FocusManagerVideo$AutoFocusCallback;
    }
.end annotation


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;


# direct methods
.method public constructor <init>(IIZI)V
    .locals 2
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/android/camera/AbstractFocusManager;-><init>()V

    .line 739
    new-instance v0, Lcom/android/camera/FocusManagerVideo$AutoFocusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/FocusManagerVideo$AutoFocusCallback;-><init>(Lcom/android/camera/FocusManagerVideo;Lcom/android/camera/FocusManagerVideo$1;)V

    iput-object v0, p0, Lcom/android/camera/FocusManagerVideo;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 744
    iput p4, p0, Lcom/android/camera/AbstractFocusManager;->mDisplayOrientation:I

    .line 745
    iput-boolean p3, p0, Lcom/android/camera/AbstractFocusManager;->mMirror:Z

    .line 746
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManagerVideo;->setPreviewSize(II)V

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    .line 748
    return-void
.end method


# virtual methods
.method public getAutoFocusCallback()Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/camera/FocusManagerVideo;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method public getFocusArea(II)Ljava/util/List;
    .locals 10
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/android/camera/AbstractFocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 761
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v9, focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    iget v1, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/AbstractFocusManager;->FOCUS_AREA_HEIGHT:I

    const/high16 v3, 0x3f80

    iget v6, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/AbstractFocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 769
    .end local v9           #focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_0
    return-object v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 752
    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 753
    :cond_0
    iput p1, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewWidth:I

    .line 754
    iput p2, p0, Lcom/android/camera/AbstractFocusManager;->mPreviewHeight:I

    .line 755
    invoke-virtual {p0}, Lcom/android/camera/AbstractFocusManager;->setMatrix()V

    .line 757
    :cond_1
    return-void
.end method
