.class public Lcom/android/camera/stereo/WarningCallback;
.super Ljava/lang/Object;
.source "WarningCallback.java"

# interfaces
.implements Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsDualCameraReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stereo/WarningCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    return-void
.end method


# virtual methods
.method public isDualCameraReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    return v0
.end method

.method public onWarning(I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/camera/stereo/WarningCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWarning type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/camera/stereo/WarningCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Warning message don\'t need to show"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f0221

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v3, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f0220

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v3, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0f0222

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v3, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/stereo/WarningCallback;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/stereo/WarningCallback;->mIsDualCameraReady:Z

    return-void
.end method
