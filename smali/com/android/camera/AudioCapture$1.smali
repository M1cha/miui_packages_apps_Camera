.class Lcom/android/camera/AudioCapture$1;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AudioCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/AudioCapture;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/AudioCapture$1;->this$0:Lcom/android/camera/AudioCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/camera/AudioCapture$1;->this$0:Lcom/android/camera/AudioCapture;

    #getter for: Lcom/android/camera/AudioCapture;->mIsRunning:Z
    invoke-static {v1}, Lcom/android/camera/AudioCapture;->access$000(Lcom/android/camera/AudioCapture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/camera/AudioCapture$1;->this$0:Lcom/android/camera/AudioCapture;

    #getter for: Lcom/android/camera/AudioCapture;->mFinishAmplitude:I
    invoke-static {v1}, Lcom/android/camera/AudioCapture;->access$100(Lcom/android/camera/AudioCapture;)I

    move-result v1

    sget v2, Lcom/android/camera/AudioCapture;->SHUTTER_BUTTON_DRAWABLE_LENGHT:I

    if-le v1, v2, :cond_1

    sget v0, Lcom/android/camera/AudioCapture;->SHUTTER_BUTTON_DRAWABLE_LENGHT:I

    .line 42
    .local v0, intResult:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/AudioCapture$1;->this$0:Lcom/android/camera/AudioCapture;

    invoke-static {}, Lcom/android/camera/AudioCapture;->access$200()[I

    move-result-object v2

    aget v2, v2, v0

    #calls: Lcom/android/camera/AudioCapture;->updateShutterButton(I)V
    invoke-static {v1, v2}, Lcom/android/camera/AudioCapture;->access$300(Lcom/android/camera/AudioCapture;I)V

    goto :goto_0

    .line 39
    .end local v0           #intResult:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/AudioCapture$1;->this$0:Lcom/android/camera/AudioCapture;

    #getter for: Lcom/android/camera/AudioCapture;->mFinishAmplitude:I
    invoke-static {v1}, Lcom/android/camera/AudioCapture;->access$100(Lcom/android/camera/AudioCapture;)I

    move-result v0

    goto :goto_1
.end method
