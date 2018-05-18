.class Lcom/android/camera/fragment/sticker/FragmentSticker$3;
.super Ljava/lang/Object;
.source "FragmentSticker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/FragmentSticker;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentSticker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$3;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$3;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {v2}, Lcom/android/camera/fragment/sticker/FragmentSticker;->-get0(Lcom/android/camera/fragment/sticker/FragmentSticker;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
    .end packed-switch
.end method
