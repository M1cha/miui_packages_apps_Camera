.class Lcom/android/camera/EffectsRecorder$5;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectsRecorder;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectsRecorder;

.field final synthetic val$effect:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/android/camera/EffectsRecorder;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder$5;->this$0:Lcom/android/camera/EffectsRecorder;

    iput p2, p0, Lcom/android/camera/EffectsRecorder$5;->val$effect:I

    iput p3, p0, Lcom/android/camera/EffectsRecorder$5;->val$msg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder$5;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/camera/EffectsRecorder;->access$1000(Lcom/android/camera/EffectsRecorder;)Lcom/android/camera/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/EffectsRecorder$5;->val$effect:I

    iget v2, p0, Lcom/android/camera/EffectsRecorder$5;->val$msg:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/EffectsRecorder$EffectsListener;->onEffectsUpdate(II)V

    .line 933
    return-void
.end method
