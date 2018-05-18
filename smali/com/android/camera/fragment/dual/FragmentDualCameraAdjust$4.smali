.class Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;
.super Ljava/lang/Object;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMiddleX:I

.field private mTouchDownX:F

.field final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-virtual {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-get3(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v5

    :pswitch_0
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-get2(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-get2(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-get6(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, v6, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-get2(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-get6(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, v6, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-set1(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)Z

    iput v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
