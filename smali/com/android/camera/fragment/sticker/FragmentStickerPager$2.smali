.class Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;
.super Landroid/os/Handler;
.source "FragmentStickerPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/sticker/FragmentStickerPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->-get0(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Lcom/android/camera/fragment/sticker/StickerAdapter;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/sticker/StickerAdapter;->notifyItemChanged(I)V

    const-string/jumbo v0, "FragmentStickerPager"

    const-string/jumbo v1, "MSG_NOTIFY_ITEM"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-static {v0}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;->-get0(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)Lcom/android/camera/fragment/sticker/StickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/sticker/StickerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
