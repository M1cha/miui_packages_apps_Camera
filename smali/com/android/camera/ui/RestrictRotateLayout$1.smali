.class Lcom/android/camera/ui/RestrictRotateLayout$1;
.super Ljava/lang/Object;
.source "RestrictRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/UIHelper$ViewVisitAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RestrictRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/RestrictRotateLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/RestrictRotateLayout;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/RestrictRotateLayout$1;->this$0:Lcom/android/camera/ui/RestrictRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 38
    instance-of v0, p1, Lcom/android/camera/ui/Rotatable;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 39
    check-cast p1, Lcom/android/camera/ui/Rotatable;

    .end local p1
    iget-object v0, p0, Lcom/android/camera/ui/RestrictRotateLayout$1;->this$0:Lcom/android/camera/ui/RestrictRotateLayout;

    iget v0, v0, Lcom/android/camera/ui/RestrictRotateLayout;->mOrientation:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 41
    :cond_0
    return-void
.end method
