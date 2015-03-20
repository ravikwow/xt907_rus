.class public Lcom/android/phone/CurrentCountryListActivity;
.super Landroid/app/ListActivity;
.source "CurrentCountryListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CurrentCountryListActivity$ModeCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter",
            "<",
            "Lcom/android/phone/AssistedDialingUtil$CtryListNode;",
            ">;"
        }
    .end annotation
.end field

.field private mCtryNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/AssistedDialingUtil$CtryListNode;",
            ">;"
        }
    .end annotation
.end field

.field mNewCtryDg:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->DBG:Z

    .line 65
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    return-void

    :cond_0
    move v0, v2

    .line 63
    goto :goto_0

    :cond_1
    move v1, v2

    .line 65
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    .line 447
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CurrentCountryListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CurrentCountryListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CurrentCountryListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CurrentCountryListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity;->updateSettingDb(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CurrentCountryListActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CurrentCountryListActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/CurrentCountryListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CurrentCountryListActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/CurrentCountryListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CurrentCountryListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity;->handleChangeCurCtry(I)V

    return-void
.end method

.method private handleChangeCurCtry(I)V
    .locals 3
    .param p1, "mcc"    # I

    .prologue
    .line 249
    invoke-static {p1}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 250
    .local v0, "entryInfo":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity;->updateSettingDb(I)V

    .line 253
    const/4 v1, -0x1

    iput v1, v0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    .line 254
    sget-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleChangeCurCtry addUnknownCountry"

    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-static {v0}, Lcom/android/phone/AssistedDialingUtil;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 258
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    .line 261
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelAssistedDialingUnknownMcc()V

    .line 262
    sget-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "handleChangeCurCtry clear notification"

    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    sget-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeCurCtry get null entry, mcc ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initNewCtryDg(Landroid/app/Dialog;)V
    .locals 24
    .param p1, "dg"    # Landroid/app/Dialog;

    .prologue
    .line 300
    const v1, 0x7f0c039c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 302
    const v1, 0x7f080011

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    .line 303
    .local v3, "mCtryName":Landroid/widget/EditText;
    const v1, 0x7f080012

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 304
    .local v4, "mCtryCode":Landroid/widget/EditText;
    const v1, 0x7f080013

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    .line 305
    .local v5, "mCtryIdd":Landroid/widget/EditText;
    const v1, 0x7f080014

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    .line 306
    .local v6, "mCtryNdd":Landroid/widget/EditText;
    const v1, 0x7f080015

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 307
    .local v7, "mAreaCode":Landroid/widget/EditText;
    const v1, 0x7f080016

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 308
    .local v8, "mNumLen":Landroid/widget/EditText;
    const v1, 0x7f080018

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object v14, v1

    check-cast v14, Landroid/widget/Button;

    .line 309
    .local v14, "mSaveButton":Landroid/widget/Button;
    const v1, 0x7f080017

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v23, v1

    check-cast v23, Landroid/widget/Button;

    .line 312
    .local v23, "mCancelButton":Landroid/widget/Button;
    new-instance v1, Lcom/android/phone/CurrentCountryListActivity$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/CurrentCountryListActivity$3;-><init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 324
    new-instance v9, Lcom/android/phone/CurrentCountryListActivity$4;

    move-object/from16 v10, p0

    move-object v11, v4

    move-object v12, v5

    move-object v13, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/phone/CurrentCountryListActivity$4;-><init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 340
    .local v9, "watcher":Landroid/text/TextWatcher;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 341
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 344
    new-instance v1, Lcom/android/phone/CurrentCountryListActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/phone/CurrentCountryListActivity$5;-><init>(Lcom/android/phone/CurrentCountryListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v15, Lcom/android/phone/CurrentCountryListActivity$6;

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v15 .. v22}, Lcom/android/phone/CurrentCountryListActivity$6;-><init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 404
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v0, "CurrentCountryListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method private updateSettingDb(I)V
    .locals 4
    .param p1, "mcc"    # I

    .prologue
    .line 416
    invoke-static {p1}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 417
    .local v0, "entryInfo":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 420
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-boolean v2, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update Setting db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 429
    :cond_0
    const-string v2, "cur_country_name"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 431
    const-string v2, "cur_country_mcc"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    const-string v2, "cur_country_code"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    const-string v2, "cur_country_idd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 437
    const-string v2, "cur_country_ndd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    const-string v2, "cur_country_area_code"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 441
    const-string v2, "cur_country_mdn_len"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/phone/AssistedDialingUtil;->createCtryNameList(Landroid/content/res/Resources;Ljava/util/ArrayList;)V

    .line 93
    new-instance v1, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    const/high16 v2, 0x7f040000

    iget-object v3, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/CurrentCountryListActivity;->mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    .line 95
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity;->mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f0c0380

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 234
    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c038c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0385

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "create add new country dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 183
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    .line 184
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->initNewCtryDg(Landroid/app/Dialog;)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    goto :goto_0

    .line 190
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "create reset country dialog"

    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 191
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0383

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0384

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c038e

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CurrentCountryListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CurrentCountryListActivity$1;-><init>(Lcom/android/phone/CurrentCountryListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_3
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "create country name duplicate dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 220
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CurrentCountryListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CurrentCountryListActivity$2;-><init>(Lcom/android/phone/CurrentCountryListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 109
    const v0, 0x7f0c0382

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 111
    const/4 v0, 0x3

    const v1, 0x7f0c0383

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    const v0, 0x7f0c0381

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 115
    return v4
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 238
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 240
    new-instance v0, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CurrentCountryListActivity$ModeCallback;-><init>(Lcom/android/phone/CurrentCountryListActivity;Lcom/android/phone/CurrentCountryListActivity$1;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mActionMode:Landroid/view/ActionMode;

    .line 242
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 141
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 144
    :sswitch_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 147
    :sswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 150
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/AssistedDialingSetting;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 122
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    if-nez v0, :cond_0

    .line 123
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    :goto_0
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isUnknownCtryEntryExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    :goto_1
    return v1

    .line 125
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 271
    if-eqz p1, :cond_1

    .line 274
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->isCtryListChanged:Z

    if-eqz v0, :cond_0

    .line 275
    sput-boolean v2, Lcom/android/phone/AssistedDialingUtil;->isCtryListChanged:Z

    .line 276
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/phone/AssistedDialingUtil;->createCtryNameList(Landroid/content/res/Resources;Ljava/util/ArrayList;)V

    .line 277
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mAdapter:Lcom/android/phone/AssistedDialingUtil$MyArrayAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 279
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onWindowFocusChanged, get ctry list again!"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 282
    :cond_0
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0
.end method
