.class Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;
.super Ljava/lang/Object;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusIndicatorRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    .param p2, "x1"    # Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iget-object v1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$EndAction;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    # getter for: Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->access$200(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method
