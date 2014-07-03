.class Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/PhotoPage;
    .param p2, "x1"    # Lcom/android/gallery3d/app/PhotoPage$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/PhotoPage;->access$002(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 163
    return-void
.end method
