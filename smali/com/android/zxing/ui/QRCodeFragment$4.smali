.class Lcom/android/zxing/ui/QRCodeFragment$4;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/ui/QRCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/ui/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragment$4;->this$0:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 251
    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    .line 252
    return-void
.end method
