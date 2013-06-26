.class public Lcom/android/zxing/ui/QRCodeFragment;
.super Landroid/preference/PreferenceFragment;
.source "QRCodeFragment.java"


# static fields
.field private static final DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

.field private static final MECARD_MAP_KEY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackView:Landroid/view/View;

.field private mBackViewListener:Landroid/view/View$OnClickListener;

.field private mButtonCenter:Landroid/widget/Button;

.field private mButtonCenterListener:Landroid/view/View$OnClickListener;

.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonLeftListener:Landroid/view/View$OnClickListener;

.field private mButtonRight:Landroid/widget/Button;

.field private mButtonRightListener:Landroid/view/View$OnClickListener;

.field private mContent:Ljava/lang/String;

.field private mContentTitle:Landroid/widget/TextView;

.field private mType:Lcom/android/zxing/QRCodeType;

.field private mViewBackground:Landroid/view/View;

.field private mViewSymbol:Landroid/view/View;

.field private mWarningText:Landroid/widget/TextView;

.field private mWeChatInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-string v0, "market://details?id=com.tencent.mm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "N"

    const-string v2, "pref_mecard_name_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "NICKNAME"

    const-string v2, "pref_mecard_nickname_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "ORG"

    const-string v2, "pref_mecard_company_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "TIL"

    const-string v2, "pref_mecard_title_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "TEL"

    const-string v2, "pref_mecard_phone_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "EMAIL"

    const-string v2, "pref_mecard_email_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "URL"

    const-string v2, "pref_mecard_web_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "ADR"

    const-string v2, "pref_mecard_address_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "BDAY"

    const-string v2, "pref_mecard_birthday_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    const-string v1, "NOTE"

    const-string v2, "pref_mecard_note_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 51
    sget-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 191
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$1;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeftListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$2;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenterListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$3;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRightListener:Landroid/view/View$OnClickListener;

    .line 248
    new-instance v0, Lcom/android/zxing/ui/QRCodeFragment$4;

    invoke-direct {v0, p0}, Lcom/android/zxing/ui/QRCodeFragment$4;-><init>(Lcom/android/zxing/ui/QRCodeFragment;)V

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackViewListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/ui/QRCodeFragment;)Lcom/android/zxing/QRCodeType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIBrowser()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->copyToClipboard()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/zxing/ui/QRCodeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchWeChat()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->downloadWeChat()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->launchMIUIMartket()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/zxing/ui/QRCodeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->insertContact()V

    return-void
.end method

.method private copyToClipboard()V
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 260
    .local v0, clipboard:Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01f2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 262
    return-void
.end method

.method private downloadWeChat()V
    .locals 4

    .prologue
    .line 354
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    sget-object v2, Lcom/android/zxing/ui/QRCodeFragment;->DOWNLOAD_WECHAT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 358
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private insertContact()V
    .locals 28

    .prologue
    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/android/zxing/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/android/zxing/QRCodeType;)Ljava/util/HashMap;

    move-result-object v11

    .line 266
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v9, extras:Landroid/os/Bundle;
    const-string v23, "N"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 269
    .local v12, name:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 270
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v23, "vnd.android.cursor.item/name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    .end local v13           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string v23, "NICKNAME"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 276
    .local v14, nickame:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 277
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v15, nicknameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v23, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 282
    .end local v15           #nicknameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v23, "TEL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 283
    .local v18, phone:Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 284
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v19, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 289
    .end local v19           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v23, "ORG"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    .local v4, company:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v5, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v23, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 296
    .end local v5           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v23, "EMAIL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 297
    .local v7, email:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 298
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v8, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v23, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 303
    .end local v8           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v23, "ADR"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, address:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v3, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    const-string v23, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 310
    .end local v3           #addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-string v23, "NOTE"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 311
    .local v16, note:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 312
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v17, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v23, "vnd.android.cursor.item/note"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 317
    .end local v17           #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v23, "URL"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 318
    .local v21, web:Ljava/lang/String;
    if-eqz v21, :cond_7

    .line 319
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v22, webList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v23, "vnd.android.cursor.item/website"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    .end local v22           #webList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v12, :cond_8

    .line 324
    new-instance v10, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v10, intent:Landroid/content/Intent;
    const-string v23, "vnd.android.cursor.dir/preview_contact"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 328
    .local v6, display:Landroid/view/Display;
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 329
    .local v20, point:Landroid/graphics/Point;
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 330
    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 333
    .end local v6           #display:Landroid/view/Display;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v20           #point:Landroid/graphics/Point;
    :cond_8
    return-void
.end method

.method private isWeChatInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.qrcode.GetQRCodeInfoUI"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 376
    const/4 v1, 0x1

    .line 378
    :cond_0
    return v1
.end method

.method private launchMIUIBrowser()V
    .locals 4

    .prologue
    .line 383
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 387
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchMIUIMartket()V
    .locals 4

    .prologue
    .line 337
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v3, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne v2, v3, :cond_0

    .line 339
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 344
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    .line 350
    :goto_1
    return-void

    .line 342
    :cond_0
    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.ui.MarketTabActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private launchWeChat()V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.ui.qrcode.GetQRCodeInfoUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragment;->startActivity(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "root"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 395
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 396
    .local v0, child:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 410
    :goto_0
    return v3

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 402
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 403
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 404
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 405
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 406
    goto :goto_0

    .line 402
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/zxing/QRCodeType;Ljava/lang/String;)V
    .locals 12
    .parameter "type"
    .parameter "text"

    .prologue
    const v11, 0x7f0d01e6

    const v10, 0x7f020103

    const v7, 0x7f020102

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 69
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 70
    .local v0, group:Landroid/preference/PreferenceGroup;
    iput-boolean v9, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 74
    :cond_0
    const v6, 0x7f060006

    invoke-virtual {p0, v6}, Lcom/android/zxing/ui/QRCodeFragment;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 76
    if-eqz p2, :cond_a

    .line 77
    iput-object p2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 79
    sget-object v6, Lcom/android/zxing/QRCodeType;->MECARD:Lcom/android/zxing/QRCodeType;

    if-eq p1, v6, :cond_1

    sget-object v6, Lcom/android/zxing/QRCodeType;->VCARD:Lcom/android/zxing/QRCodeType;

    if-ne p1, v6, :cond_4

    .line 81
    :cond_1
    invoke-static {p2, p1}, Lcom/android/zxing/QRCodeMatcher;->contactsCardSpliter(Ljava/lang/String;Lcom/android/zxing/QRCodeType;)Ljava/util/HashMap;

    move-result-object v4

    .line 82
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 83
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 86
    sget-object v6, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 88
    :cond_2
    sget-object v6, Lcom/android/zxing/ui/QRCodeFragment;->MECARD_MAP_KEY:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    const-string v6, "pref_text_key"

    invoke-direct {p0, v0, v6}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 92
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v7, 0x7f0200fe

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v7, 0x7f0200ff

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v7, 0x7f0d01ea

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 95
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v7, 0x7f0d01e7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 102
    :cond_4
    sget-object v6, Lcom/android/zxing/QRCodeType;->WEB_URL:Lcom/android/zxing/QRCodeType;

    if-ne p1, v6, :cond_5

    .line 103
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v7, 0x7f0d01eb

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 106
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v7, 0x7f0d01fe

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    :goto_2
    const-string v6, "pref_text_content_key"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    const-string v6, "pref_mecard_key"

    invoke-direct {p0, v0, v6}, Lcom/android/zxing/ui/QRCodeFragment;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_1

    .line 112
    :cond_5
    sget-object v6, Lcom/android/zxing/QRCodeType;->WEB_URL_APK:Lcom/android/zxing/QRCodeType;

    if-ne p1, v6, :cond_6

    .line 113
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const v7, 0x7f0d01ff

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    const v7, 0x7f0d01ec

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 119
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    const v7, 0x7f0d01ed

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 120
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 123
    :cond_6
    sget-object v6, Lcom/android/zxing/QRCodeType;->MARKET:Lcom/android/zxing/QRCodeType;

    if-ne p1, v6, :cond_7

    .line 124
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v7, 0x7f0200fa

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v7, 0x7f0200fb

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v7, 0x7f0d01e5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v7, 0x7f0d01f0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 130
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 133
    :cond_7
    sget-object v6, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne p1, v6, :cond_9

    .line 134
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->isWeChatInstalled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 135
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v7, 0x7f020104

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v7, 0x7f020105

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    iget-boolean v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v6, :cond_8

    .line 139
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v7, 0x7f0d01ee

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 144
    :goto_3
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v7, 0x7f0d01e8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 141
    :cond_8
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v7, 0x7f0d01ef

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 150
    :cond_9
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    const v7, 0x7f020100

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    const v7, 0x7f020101

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 152
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    const v7, 0x7f0d01e9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v7, 0x7f0d01f1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 156
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 165
    :cond_a
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContent:Ljava/lang/String;

    .line 166
    sget-object v6, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v6, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    .line 167
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 174
    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewBackground:Landroid/view/View;

    .line 176
    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mViewSymbol:Landroid/view/View;

    .line 177
    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackView:Landroid/view/View;

    .line 178
    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    .line 179
    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    .line 180
    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    .line 181
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mContentTitle:Landroid/widget/TextView;

    .line 182
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWarningText:Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mBackViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonLeftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonRightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mType:Lcom/android/zxing/QRCodeType;

    sget-object v2, Lcom/android/zxing/QRCodeType;->WECHAT:Lcom/android/zxing/QRCodeType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/zxing/QRCodeManager;->instance()Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/zxing/ui/QRCodeFragment;->isWeChatInstalled()Z

    move-result v0

    .line 227
    .local v0, isWeChatInstalled:Z
    iget-boolean v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eq v0, v1, :cond_0

    .line 228
    iput-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    .line 229
    iget-boolean v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mWeChatInstalled:Z

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v2, 0x7f0d01ee

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 236
    .end local v0           #isWeChatInstalled:Z
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 237
    return-void

    .line 232
    .restart local v0       #isWeChatInstalled:Z
    :cond_1
    iget-object v1, p0, Lcom/android/zxing/ui/QRCodeFragment;->mButtonCenter:Landroid/widget/Button;

    const v2, 0x7f0d01ef

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
