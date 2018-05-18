.class Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mHandleConfirmTap:Z

.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method

.method private handleSingleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->-wrap1(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->-get2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/Module;->onSingleTapUp(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result v0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    return v2

    :cond_1
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    const-string/jumbo v0, "CameraGestureRecognizer"

    const-string/jumbo v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->-wrap1(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->-get2(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/Module;->onLongPress(II)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/16 v4, 0x64

    const/high16 v10, 0x420c0000    # 35.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get6(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v8

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get8(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v8

    :cond_1
    const-string/jumbo v3, "CameraGestureRecognizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onScroll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get4(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v5

    neg-float v6, p4

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->-set1(Lcom/android/camera/ui/V6GestureRecognizer;F)F

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get4(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v5}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    return v8

    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_3

    return v8

    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_4

    return v8

    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_5

    return v8

    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get3(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v5

    neg-float v6, p3

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->-set0(Lcom/android/camera/ui/V6GestureRecognizer;F)F

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get7(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get0(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v5}, Lcom/android/camera/ui/V6GestureRecognizer;->-get3(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v6}, Lcom/android/camera/ui/V6GestureRecognizer;->-get3(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v6}, Lcom/android/camera/ui/V6GestureRecognizer;->-get4(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v7}, Lcom/android/camera/ui/V6GestureRecognizer;->-get4(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_6

    iget-object v5, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get3(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v6}, Lcom/android/camera/ui/V6GestureRecognizer;->-get4(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    move v3, v4

    :goto_0
    invoke-static {v5, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-set3(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get7(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v3

    if-eq v3, v4, :cond_8

    return v8

    :cond_7
    const/16 v3, 0xc8

    goto :goto_0

    :cond_8
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get3(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v3

    invoke-static {v10}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3, v9}, Lcom/android/camera/ui/V6GestureRecognizer;->-set4(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb7

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$FilterSwitcher;

    if-eqz v1, :cond_b

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$FilterSwitcher;->switchFilter(I)Z

    move-result v3

    if-eqz v3, :cond_b

    return v9

    :cond_a
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-get3(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v3

    invoke-static {v10}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3, v9}, Lcom/android/camera/ui/V6GestureRecognizer;->-set4(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb3

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz v0, :cond_c

    invoke-interface {v0, v2, v8}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->selectMode(II)V

    return v9

    :cond_c
    return v8
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEffectViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "CameraGestureRecognizer"

    const-string/jumbo v2, "onSingleTapUp"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isEffectViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v1, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->-wrap1(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
