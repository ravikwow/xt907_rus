.class public Lcom/android/contacts/vcard/ImportVCardActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;,
        Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;,
        Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

.field private mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    .line 614
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 2

    .prologue
    .line 1024
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1025
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    :cond_0
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    .line 1031
    :goto_0
    return-void

    .line 1028
    :cond_1
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    .line 1029
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private getSelectImportTypeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 779
    new-instance v2, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    .line 780
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b00cf

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 786
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 787
    .local v1, "items":[Ljava/lang/String;
    const v3, 0x7f0b00c1

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 789
    const/4 v3, 0x1

    const v4, 0x7f0b00c2

    invoke-virtual {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 791
    const/4 v3, 0x2

    const v4, 0x7f0b00c3

    invoke-virtual {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 793
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 794
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 13
    .param p1, "multipleSelect"    # Z

    .prologue
    .line 798
    iget-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 799
    .local v6, "size":I
    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Z)V

    .line 800
    .local v5, "listener":Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b00cf

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    iget-object v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 807
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-array v4, v6, [Ljava/lang/CharSequence;

    .line 808
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 809
    .local v1, "dateFormat":Ljava/text/DateFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 810
    iget-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .line 811
    .local v8, "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 812
    .local v7, "stringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 813
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 814
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 818
    .local v3, "indexToBeSpanned":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getLastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 820
    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v10, 0x3f333333

    invoke-direct {v9, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v7, v9, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 823
    aput-object v7, v4, v2

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    .end local v3    # "indexToBeSpanned":I
    .end local v7    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    if-eqz p1, :cond_1

    .line 826
    const/4 v9, 0x0

    check-cast v9, [Z

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 830
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 828
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private importVCard(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 753
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 754
    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 766
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$1;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method private importVCard([Ljava/lang/String;)V
    .locals 4
    .param p1, "uriStrings"    # [Ljava/lang/String;

    .prologue
    .line 757
    array-length v1, p1

    .line 758
    .local v1, "length":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 759
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 760
    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 763
    return-void
.end method

.method private importVCardFromSDCard(Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V
    .locals 4
    .param p1, "vcardFile"    # Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .prologue
    .line 749
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 750
    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 739
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/String;

    .line 740
    .local v3, "uriStrings":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 741
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .line 742
    .local v4, "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    .end local v4    # "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method private startImport()V
    .locals 5

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 891
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 892
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 893
    const-string v2, "VCardImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting vCard import using Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard(Landroid/net/Uri;)V

    .line 899
    :goto_0
    return-void

    .line 896
    :cond_0
    const-string v2, "VCardImport"

    const-string v3, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    .prologue
    .line 726
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 727
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    .line 735
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f060008

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 733
    :cond_2
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f060009

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 872
    if-nez p1, :cond_0

    .line 873
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 874
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 878
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startImport()V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    if-eqz p2, :cond_2

    .line 881
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code was not OK nor CANCELED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1011
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    .line 1015
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 835
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 840
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_0

    .line 842
    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 843
    const-string v2, "account_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 844
    const-string v4, "data_set"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 850
    new-instance v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v1, v3, v2, v0}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 867
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startImport()V

    .line 868
    :goto_2
    return-void

    .line 846
    :cond_0
    const-string v0, "VCardImport"

    const-string v2, "intent does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    .line 852
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 854
    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountsWithoutCard(Z)Ljava/util/List;

    move-result-object v0

    .line 856
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 857
    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    goto :goto_1

    .line 858
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 859
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    goto :goto_1

    .line 861
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x1010355

    const/4 v4, 0x1

    const v7, 0x104000a

    const/4 v6, 0x0

    .line 903
    sparse-switch p1, :sswitch_data_0

    .line 986
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 905
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v3, :cond_0

    .line 906
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "mAccountSelectionListener must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 909
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-static {p0, p1, v3, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 913
    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    .line 914
    const v3, 0x7f0b00c4

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "message":Ljava/lang/String;
    const-string v3, ""

    invoke-static {p0, v3, v1, v4, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    .line 917
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 918
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->start()V

    .line 920
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 923
    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 928
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 931
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    const v3, 0x7f0b00cb

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 932
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 936
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 939
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSelectImportTypeDialog()Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 942
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 945
    :sswitch_6
    invoke-direct {p0, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 948
    :sswitch_7
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_2

    .line 949
    const v3, 0x7f0b00d0

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f0b00d1

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 951
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    .line 952
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 955
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 956
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardService()V

    .line 958
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 961
    :sswitch_8
    const v3, 0x7f0b00c5

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0b00c6

    invoke-virtual {p0, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 963
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 968
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 971
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_9
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    .line 972
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 973
    const-string v3, "VCardImport"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const v3, 0x7f0b00ce

    invoke-virtual {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 976
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b00d4

    invoke-virtual {p0, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 982
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 903
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060005 -> :sswitch_1
        0x7f060006 -> :sswitch_2
        0x7f060007 -> :sswitch_3
        0x7f060008 -> :sswitch_4
        0x7f060009 -> :sswitch_6
        0x7f06000a -> :sswitch_5
        0x7f06000b -> :sswitch_7
        0x7f06000c -> :sswitch_8
        0x7f06000d -> :sswitch_9
        0x7f0b00be -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1002
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1004
    const-string v0, "VCardImport"

    const-string v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    .line 1007
    :cond_0
    return-void
.end method

.method showFailureNotification(I)V
    .locals 4
    .param p1, "reasonId"    # I

    .prologue
    .line 1034
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1036
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 1040
    .local v0, "notification":Landroid/app/Notification;
    const-string v2, "VCardServiceFailure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1042
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardActivity$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/vcard/ImportVCardActivity$2;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1049
    return-void
.end method

.method startVCardService()V
    .locals 4

    .prologue
    .line 990
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 992
    const-string v0, "VCardImport"

    const-string v1, "Bind to VCardService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 996
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 998
    return-void
.end method
