.class Lcom/android/camera/MiuiCameraSound$1;
.super Ljava/lang/Object;
.source "MiuiCameraSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MiuiCameraSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MiuiCameraSound;


# direct methods
.method constructor <init>(Lcom/android/camera/MiuiCameraSound;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound$1;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound$1;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-static {v0}, Lcom/android/camera/MiuiCameraSound;->-get0(Lcom/android/camera/MiuiCameraSound;)I

    move-result v0

    if-ne v0, p2, :cond_0

    move-object v0, p1

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound$1;->this$0:Lcom/android/camera/MiuiCameraSound;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/MiuiCameraSound;->-set1(Lcom/android/camera/MiuiCameraSound;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "MiuiCameraSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to load sound for playback (status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
