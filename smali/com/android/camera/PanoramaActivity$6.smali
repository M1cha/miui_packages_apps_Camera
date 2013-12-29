.class Lcom/android/camera/PanoramaActivity$6;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaActivity;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaActivity;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$6;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity$6;->this$0:Lcom/android/camera/PanoramaActivity;

    #calls: Lcom/android/camera/PanoramaActivity;->switchToCameraMode()V
    invoke-static {v0}, Lcom/android/camera/PanoramaActivity;->access$2200(Lcom/android/camera/PanoramaActivity;)V

    .line 706
    return-void
.end method
