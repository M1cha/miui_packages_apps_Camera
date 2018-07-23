.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/DialogFragment$DialogStyle;
    }
.end annotation


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 86
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 87
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 88
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 97
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 168
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 178
    return-void
.end method

.method dismissInternal(Z)V
    .locals 5
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v1, :cond_0

    .line 184
    iput-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 185
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 186
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 190
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 191
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    if-gez v1, :cond_2

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 197
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 198
    if-nez p1, :cond_3

    .line 201
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 204
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_1
    return-void

    .line 182
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 188
    iput-object v4, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 194
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_1

    .line 199
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 305
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 311
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 313
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 212
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 378
    iget-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz v2, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 383
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_2

    .line 389
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 390
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 391
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 392
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 393
    if-nez p1, :cond_4

    .line 399
    :cond_0
    :goto_1
    return-void

    .line 379
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 384
    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 387
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 385
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "DialogFragment can not be attached to a container view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_4
    const-string/jumbo v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 395
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 396
    iget-object v2, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 267
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 362
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mContainerId:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 291
    if-nez p1, :cond_1

    .line 299
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 289
    goto :goto_0

    .line 292
    :cond_1
    const-string/jumbo v0, "android:style"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 293
    const-string/jumbo v0, "android:theme"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 294
    const-string/jumbo v0, "android:cancelable"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 295
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    const-string/jumbo v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 296
    const-string/jumbo v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 358
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 450
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 455
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 456
    iput-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 277
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 365
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 413
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    if-nez v1, :cond_2

    .line 422
    :goto_1
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    if-nez v1, :cond_3

    .line 425
    :goto_2
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    if-eqz v1, :cond_4

    .line 428
    :goto_3
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz v1, :cond_5

    .line 431
    :goto_4
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 434
    :goto_5
    return-void

    .line 414
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 416
    const-string/jumbo v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 420
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_2
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const-string/jumbo v2, "android:style"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 423
    :cond_3
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    const-string/jumbo v2, "android:theme"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 426
    :cond_4
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    const-string/jumbo v2, "android:cancelable"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 429
    :cond_5
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    const-string/jumbo v2, "android:showsDialog"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 432
    :cond_6
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const-string/jumbo v2, "android:backStackId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 403
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 404
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 406
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 439
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 226
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 255
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 114
    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 115
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    const v0, 0x1030059

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 118
    :goto_0
    if-nez p2, :cond_2

    .line 121
    :goto_1
    return-void

    .line 115
    :cond_1
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_2
    iput p2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    goto :goto_1
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    .prologue
    .line 322
    packed-switch p2, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 324
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 330
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 154
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 156
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 157
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 138
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 139
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 140
    return-void
.end method
