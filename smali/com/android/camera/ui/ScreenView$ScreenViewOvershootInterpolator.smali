.class Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenViewOvershootInterpolator"
.end annotation


# instance fields
.field private mTension:F

.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/camera/ui/ScreenView;->-get0(Lcom/android/camera/ui/ScreenView;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return-void
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    mul-float v0, p1, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public setDistance(II)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenView;->-get0(Lcom/android/camera/ui/ScreenView;)F

    move-result v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {v0}, Lcom/android/camera/ui/ScreenView;->-get0(Lcom/android/camera/ui/ScreenView;)F

    move-result v0

    goto :goto_0
.end method
