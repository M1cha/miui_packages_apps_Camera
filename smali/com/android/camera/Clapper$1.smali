.class Lcom/android/camera/Clapper$1;
.super Ljava/lang/Object;
.source "Clapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Clapper;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Clapper;


# direct methods
.method constructor <init>(Lcom/android/camera/Clapper;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/Clapper$1;->this$0:Lcom/android/camera/Clapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/Clapper$1;->this$0:Lcom/android/camera/Clapper;

    # invokes: Lcom/android/camera/Clapper;->threadRecordClap()V
    invoke-static {v0}, Lcom/android/camera/Clapper;->access$000(Lcom/android/camera/Clapper;)V

    .line 81
    return-void
.end method
