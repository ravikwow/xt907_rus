.class public Lcom/android/systemui/statusbar/phone/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# instance fields
.field private isONSSupported:Z

.field private mAttached:Z

.field private mCacheplmn:Ljava/lang/String;

.field private mCacheshowPlmn:Z

.field private mCacheshowSpn:Z

.field private mCachespn:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mNetworkNameSeparator:Ljava/lang/String;

.field private mOnsText:Landroid/widget/TextView;

.field mServiceState:Landroid/telephony/ServiceState;

.field mShortCarrierNamesTable:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->isONSSupported:Z

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkNameSeparator:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    .line 103
    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowSpn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/CarrierLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowSpn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCachespn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCachespn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowPlmn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/CarrierLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheshowPlmn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheplmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CarrierLabel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCacheplmn:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 110
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 132
    :cond_0
    return-void
.end method

.method setOnsText(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "onsText"    # Landroid/widget/TextView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 17
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v14, "CarrierLabel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateNetworkName: showSpn="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " spn=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "showPlmn="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " plmn=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "isONSSupported="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->isONSSupported:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_10

    const/16 p3, 0x1

    .line 325
    :goto_0
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_11

    const/16 p1, 0x1

    .line 333
    :goto_1
    move-object/from16 v7, p2

    .line 334
    .local v7, "short_spn":Ljava/lang/String;
    move-object/from16 v6, p4

    .line 336
    .local v6, "short_plmn":Ljava/lang/String;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    array-length v14, v14

    if-eqz v14, :cond_0

    .line 341
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    array-length v14, v14

    if-ge v2, v14, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    add-int/lit8 v15, v2, 0x1

    aget-object v7, v14, v15

    .line 349
    .end local v2    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    array-length v14, v14

    if-eqz v14, :cond_1

    .line 354
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    array-length v14, v14

    if-ge v2, v14, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShortCarrierNamesTable:[Ljava/lang/String;

    add-int/lit8 v15, v2, 0x1

    aget-object v6, v14, v15

    .line 364
    .end local v2    # "i":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x111004a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 378
    .local v12, "spn_priority":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110048

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 380
    .local v9, "show_expanded":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110049

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 382
    .local v8, "show_both_plmn_and_spn_in_expanded":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x111004b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 398
    .local v10, "show_no_svc_text":Z
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v13, "str":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 402
    .local v11, "something":Z
    const/4 v3, 0x0

    .line 403
    .local v3, "ons_done":Z
    const/4 v5, 0x0

    .line 404
    .local v5, "ons_spn":Z
    const/4 v4, 0x0

    .line 407
    .local v4, "ons_plmn":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->isONSSupported:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    if-eqz v14, :cond_5

    .line 408
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    if-nez v14, :cond_2

    if-eqz p3, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040320

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    if-eqz p1, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const/4 v3, 0x1

    .line 425
    :cond_2
    if-nez v3, :cond_3

    if-eqz p3, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040320

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const/4 v3, 0x1

    .line 439
    :cond_3
    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    const/4 v3, 0x1

    .line 453
    :cond_4
    if-nez v3, :cond_5

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mOnsText:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :cond_5
    if-eqz v8, :cond_6

    .line 461
    const/4 v9, 0x1

    .line 477
    :cond_6
    if-eqz v3, :cond_8

    if-nez v3, :cond_8

    if-eqz v9, :cond_e

    if-eqz p3, :cond_7

    if-eqz v4, :cond_8

    if-nez v8, :cond_8

    :cond_7
    if-eqz p1, :cond_e

    if-eqz v5, :cond_8

    if-eqz v8, :cond_e

    .line 500
    :cond_8
    if-eqz p3, :cond_a

    if-eqz v4, :cond_9

    if-eqz v8, :cond_a

    if-eqz p1, :cond_a

    .line 517
    :cond_9
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const/4 v11, 0x1

    .line 520
    :cond_a
    if-eqz p1, :cond_e

    if-eqz v5, :cond_b

    if-eqz v8, :cond_e

    if-eqz p3, :cond_e

    .line 537
    :cond_b
    if-eqz v11, :cond_c

    if-eqz v11, :cond_e

    if-eqz p4, :cond_c

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 546
    :cond_c
    if-eqz v11, :cond_d

    .line 547
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const/4 v11, 0x1

    .line 555
    :cond_e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    .line 557
    if-nez v11, :cond_f

    .line 558
    if-nez v3, :cond_f

    .line 561
    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-eqz v14, :cond_14

    .line 568
    const v14, 0x1040306

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(I)V

    .line 600
    :cond_f
    :goto_4
    return-void

    .line 320
    .end local v3    # "ons_done":Z
    .end local v4    # "ons_plmn":Z
    .end local v5    # "ons_spn":Z
    .end local v6    # "short_plmn":Ljava/lang/String;
    .end local v7    # "short_spn":Ljava/lang/String;
    .end local v8    # "show_both_plmn_and_spn_in_expanded":Z
    .end local v9    # "show_expanded":Z
    .end local v10    # "show_no_svc_text":Z
    .end local v11    # "something":Z
    .end local v12    # "spn_priority":Z
    .end local v13    # "str":Ljava/lang/StringBuilder;
    :cond_10
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 325
    :cond_11
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 341
    .restart local v2    # "i":I
    .restart local v6    # "short_plmn":Ljava/lang/String;
    .restart local v7    # "short_spn":Ljava/lang/String;
    :cond_12
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    .line 354
    :cond_13
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_3

    .line 570
    .end local v2    # "i":I
    .restart local v3    # "ons_done":Z
    .restart local v4    # "ons_plmn":Z
    .restart local v5    # "ons_spn":Z
    .restart local v8    # "show_both_plmn_and_spn_in_expanded":Z
    .restart local v9    # "show_expanded":Z
    .restart local v10    # "show_no_svc_text":Z
    .restart local v11    # "something":Z
    .restart local v12    # "spn_priority":Z
    .restart local v13    # "str":Ljava/lang/StringBuilder;
    :cond_14
    const-string v14, "CarrierLabel"

    const-string v15, "updateNetworkName DO NOT DISPLAY NO SVC"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
