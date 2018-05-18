.class Lcom/android/camera/ui/FaceView$2;
.super Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    invoke-super {p0, p1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v1}, Lcom/android/camera/ui/FaceView;->-get0(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return v0
.end method
