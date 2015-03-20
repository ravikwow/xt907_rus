.class public Lcom/motorola/simmanager/ImportExportActivity;
.super Landroid/app/Activity;
.source "ImportExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/ImportExportActivity$NameChecker;,
        Lcom/motorola/simmanager/ImportExportActivity$Worker;
    }
.end annotation


# static fields
.field private static PHONE_MAX_LENGHT:I

.field static final URI_ADN_NAME_LENGTH:Landroid/net/Uri;

.field private static final textIdCancel:[I

.field private static final textIdCancel_1:[I

.field private static final textIdError0:[I

.field private static final textIdError1:[I

.field private static final textIdError2:I

.field private static final textIdErrorX:[I

.field private static final textIdProgress:[I

.field private static final textIdSuccess:[I

.field private static final textIdSuccess_1:[I

.field private static final titleIdCancel:[I

.field private static final titleIdError:[I

.field private static final titleIdProgress:[I

.field private static final titleIdSuccess:[I


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContactsDone:I

.field private mContactsTotal:I

.field private mDialogyBuilder:Landroid/app/AlertDialog$Builder;

.field private mDupIds:I

.field private mIds:[I

.field private mMaxDigitsExceeded:Z

.field private mMaxNameLength:I

.field private mMode:I

.field private mNameAlertDialog:Landroid/app/AlertDialog;

.field private mNameChecker:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

.field private mNameDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mNameProgressDialog:Landroid/app/ProgressDialog;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mProcessingContact:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimFull:Z

.field private mToDelete:Landroid/database/Cursor;

.field private mTruncateName:Z

.field private mUnprocessedContacts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v0, "content://icc/adnnamelength"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->URI_ADN_NAME_LENGTH:Landroid/net/Uri;

    .line 99
    const/16 v0, 0x14

    sput v0, Lcom/motorola/simmanager/ImportExportActivity;->PHONE_MAX_LENGHT:I

    .line 217
    new-array v0, v5, [I

    const v1, 0x7f07000e

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07001c

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f07002d

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->titleIdError:[I

    .line 223
    new-array v0, v5, [I

    const v1, 0x7f070014

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070023

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070033

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdError0:[I

    .line 230
    new-array v0, v5, [I

    const v1, 0x7f070018

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070029

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070037

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdError1:[I

    .line 237
    const v0, 0x7f070026

    invoke-static {v0}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v0

    sput v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdError2:I

    .line 241
    new-array v0, v5, [I

    const v1, 0x7f070015

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070024

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070034

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdErrorX:[I

    .line 247
    new-array v0, v5, [I

    const v1, 0x7f070011

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070020

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070030

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdProgress:[I

    .line 253
    new-array v0, v5, [I

    const v1, 0x7f07000b

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070019

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f07002a

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->titleIdProgress:[I

    .line 259
    new-array v0, v5, [I

    const v1, 0x7f07000c

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07001a

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f07002b

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->titleIdCancel:[I

    .line 266
    new-array v0, v5, [I

    const v1, 0x7f070016

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070027

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070035

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdCancel_1:[I

    .line 273
    new-array v0, v5, [I

    const v1, 0x7f070012

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070021

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070031

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdCancel:[I

    .line 279
    new-array v0, v5, [I

    const v1, 0x7f07000d

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07001b

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f07002c

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->titleIdSuccess:[I

    .line 286
    new-array v0, v5, [I

    const v1, 0x7f070017

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070028

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070036

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdSuccess_1:[I

    .line 293
    new-array v0, v5, [I

    const v1, 0x7f070013

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f070022

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f070032

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/ImportExportActivity;->textIdSuccess:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I

    .line 40
    iput-boolean v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mTruncateName:Z

    .line 64
    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    .line 67
    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I

    .line 86
    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    .line 89
    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    .line 92
    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;

    .line 101
    iput-boolean v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mSimFull:Z

    .line 102
    iput-boolean v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxDigitsExceeded:Z

    .line 104
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountName:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountType:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/motorola/simmanager/ImportExportActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/simmanager/ImportExportActivity$1;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    iput-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 965
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/simmanager/ImportExportActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity;->processContact(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/motorola/simmanager/ImportExportActivity;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/simmanager/ImportExportActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mSimFull:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/simmanager/ImportExportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    return v0
.end method

.method static synthetic access$1400(Lcom/motorola/simmanager/ImportExportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I

    return v0
.end method

.method static synthetic access$1500(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/motorola/simmanager/ImportExportActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/simmanager/ImportExportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I

    return v0
.end method

.method static synthetic access$1702(Lcom/motorola/simmanager/ImportExportActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I

    return p1
.end method

.method static synthetic access$1800(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/motorola/simmanager/ImportExportActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/motorola/simmanager/ImportExportActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mTruncateName:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/simmanager/ImportExportActivity;)Lcom/motorola/simmanager/ImportExportActivity$Worker;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/motorola/simmanager/ImportExportActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/simmanager/ImportExportActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/simmanager/ImportExportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/simmanager/ImportExportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/simmanager/ImportExportActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/simmanager/ImportExportActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/simmanager/ImportExportActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ImportExportActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I

    return-object v0
.end method

.method private changeUI(I)V
    .locals 12
    .param p1, "state"    # I

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f070045

    const v9, 0x1010355

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 308
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    .line 309
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->titleIdCancel:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "noficationMessage":Ljava/lang/String;
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    if-ne v3, v7, :cond_1

    .line 313
    sget-object v3, Lcom/motorola/simmanager/ImportExportActivity;->textIdCancel_1:[I

    iget v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v3, v3, v4

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 318
    :goto_1
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 319
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 320
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/motorola/simmanager/ImportExportActivity$2;

    invoke-direct {v4, p0}, Lcom/motorola/simmanager/ImportExportActivity$2;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    iget v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I

    .local v1, "i":I
    :goto_2
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    if-ge v1, v3, :cond_8

    .line 331
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;

    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 315
    .end local v1    # "i":I
    :cond_1
    sget-object v3, Lcom/motorola/simmanager/ImportExportActivity;->textIdCancel:[I

    iget v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v3, v3, v4

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 335
    .end local v2    # "noficationMessage":Ljava/lang/String;
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    .line 337
    iget-boolean v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mSimFull:Z

    if-nez v3, :cond_2

    .line 338
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->titleIdError:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 342
    :goto_3
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 344
    iget-boolean v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mSimFull:Z

    if-ne v3, v7, :cond_3

    .line 345
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f070025

    invoke-static {v4}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 366
    :goto_4
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/motorola/simmanager/ImportExportActivity$3;

    invoke-direct {v4, p0}, Lcom/motorola/simmanager/ImportExportActivity$3;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I

    add-int/lit8 v1, v3, 0x1

    .restart local v1    # "i":I
    :goto_5
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    if-ge v1, v3, :cond_8

    .line 377
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;

    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 340
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f07001d

    invoke-static {v4}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 346
    :cond_3
    iget-boolean v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxDigitsExceeded:Z

    if-ne v3, v7, :cond_4

    .line 347
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f070039

    new-array v5, v7, [Ljava/lang/Object;

    sget v6, Lcom/motorola/simmanager/ImportExportActivity;->PHONE_MAX_LENGHT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 348
    iput-boolean v8, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxDigitsExceeded:Z

    goto :goto_4

    .line 351
    :cond_4
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    if-nez v3, :cond_6

    .line 352
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    if-ne v3, v7, :cond_5

    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    iget v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I

    if-ne v3, v4, :cond_5

    .line 353
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget v4, Lcom/motorola/simmanager/ImportExportActivity;->textIdError2:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 355
    :cond_5
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->textIdError0:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 357
    :cond_6
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    if-ne v3, v7, :cond_7

    .line 359
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->textIdError1:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    .line 361
    :cond_7
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->textIdErrorX:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    .line 381
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    .line 383
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->titleIdSuccess:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 384
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    if-ne v3, v7, :cond_a

    .line 386
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->textIdSuccess_1:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 390
    :goto_6
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 391
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/motorola/simmanager/ImportExportActivity$4;

    invoke-direct {v4, p0}, Lcom/motorola/simmanager/ImportExportActivity$4;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    :cond_8
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 468
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 470
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 471
    iput-object v11, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 473
    :cond_9
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 474
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 476
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/motorola/simmanager/ImportExportActivity$9;

    invoke-direct {v4, p0}, Lcom/motorola/simmanager/ImportExportActivity$9;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 485
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 388
    :cond_a
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDialogyBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->textIdSuccess:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 404
    :pswitch_3
    iget v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I

    if-nez v3, :cond_b

    .line 405
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->titleIdProgress:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 406
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 408
    :cond_b
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 409
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->textIdProgress:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 412
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/motorola/simmanager/ImportExportActivity$5;

    invoke-direct {v4, p0}, Lcom/motorola/simmanager/ImportExportActivity$5;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 425
    :pswitch_4
    :try_start_0
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 426
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 427
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 429
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/motorola/simmanager/ImportExportActivity;->titleIdProgress:[I

    iget v5, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 430
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 432
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/motorola/simmanager/ImportExportActivity$6;

    invoke-direct {v6, p0}, Lcom/motorola/simmanager/ImportExportActivity$6;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 439
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f070038

    invoke-static {v4}, Lcom/motorola/simmanager/SimManagerApp;->getStringOverlaidResourceId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/motorola/simmanager/ImportExportActivity$7;

    invoke-direct {v4, p0}, Lcom/motorola/simmanager/ImportExportActivity$7;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 447
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 448
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/motorola/simmanager/ImportExportActivity$8;

    invoke-direct {v4, p0}, Lcom/motorola/simmanager/ImportExportActivity$8;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 457
    iget-object v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Runnable;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/motorola/simmanager/UserTask;->execute([Ljava/lang/Object;)Lcom/motorola/simmanager/UserTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "ImportExportActivity"

    const-string v4, "Unable to start the worker"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private processContact(I)Z
    .locals 30
    .param p1, "contactId"    # I

    .prologue
    .line 500
    const/16 v24, 0x0

    .line 501
    .local v24, "toCopy":Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 502
    .local v22, "toCompare":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 503
    .local v5, "contactName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 504
    .local v6, "contactNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 508
    .local v8, "found":Z
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 804
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    if-eqz v24, :cond_1

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_1
    if-eqz v22, :cond_2

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_2
    const/16 v25, 0x1

    :cond_3
    :goto_1
    return v25

    .line 516
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SIMCommunication;->getAllContactsFromSIM(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v24

    .line 517
    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v25

    if-nez v25, :cond_6

    .line 518
    :cond_4
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_5

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_5
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 520
    :cond_6
    :try_start_2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-nez v25, :cond_8

    .line 521
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_7

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_7
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 527
    :cond_8
    :try_start_3
    const-string v25, "_id"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 528
    .local v11, "idIndexSim":I
    const-string v25, "name"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 529
    .local v14, "nameIndexSim":I
    const-string v25, "number"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 531
    .local v16, "numberIndexSim":I
    :cond_9
    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, p1

    if-ne v0, v1, :cond_b

    .line 537
    :goto_2
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 538
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->getSimPeople(Landroid/database/Cursor;)Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;

    move-result-object v12

    .line 542
    .local v12, "info":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "copy (name, number):"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "; "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v12, v1, v2}, Lcom/motorola/simmanager/PBCommunication;->isContactNameNumMatchFound(Landroid/content/ContentResolver;Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 549
    if-nez v8, :cond_e

    .line 551
    const-string v25, "didn\'t find, add new contact"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 554
    sget-boolean v25, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v25, :cond_c

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v12, v1, v2}, Lcom/motorola/simmanager/PBUtils;->saveContactToPB(Landroid/content/Context;Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 556
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_a

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_a
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 533
    .end local v12    # "info":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    :cond_b
    :try_start_4
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_9

    goto/16 :goto_2

    .line 560
    .restart local v12    # "info":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v25 .. v29}, Lcom/motorola/simmanager/PBUtils;->saveContactToPB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 563
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 564
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_d

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_d
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 569
    :cond_e
    :try_start_5
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 807
    .end local v11    # "idIndexSim":I
    .end local v12    # "info":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    .end local v14    # "nameIndexSim":I
    .end local v16    # "numberIndexSim":I
    :catchall_0
    move-exception v25

    if-eqz v24, :cond_f

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_f
    if-eqz v22, :cond_10

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v25

    .line 579
    :pswitch_1
    const/16 v18, 0x0

    .line 581
    .local v18, "realSaveCount":I
    :try_start_6
    sget-boolean v25, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v25, :cond_24

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mTruncateName:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/simmanager/PBUtils;->getAllContactsByContactId(Landroid/content/ContentResolver;IZI)Ljava/util/ArrayList;

    move-result-object v20

    .line 584
    .local v20, "simInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;>;"
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v25

    if-nez v25, :cond_13

    .line 585
    :cond_11
    const/16 v25, 0x1

    .line 807
    if-eqz v24, :cond_12

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_12
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 586
    :cond_13
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_22

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;

    .line 588
    .local v19, "simInfo":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    const-string v25, "checking if number is too big for SIM storage"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 590
    .local v17, "phoneNumber":Ljava/lang/String;
    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    sget v26, Lcom/motorola/simmanager/ImportExportActivity;->PHONE_MAX_LENGHT:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_16

    .line 591
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") IS too big for SIM storage"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 592
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/simmanager/ImportExportActivity;->mMaxDigitsExceeded:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 593
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_15

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_15
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 595
    :cond_16
    const/16 v25, 0x0

    :try_start_8
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/simmanager/ImportExportActivity;->mMaxDigitsExceeded:Z

    goto :goto_4

    .line 600
    .end local v17    # "phoneNumber":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SIMCommunication;->getAllContactsFromSIM(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v22

    .line 602
    if-eqz v22, :cond_18

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v25

    if-eqz v25, :cond_18

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 605
    :cond_18
    if-eqz v22, :cond_19

    .line 606
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_19
    const-string v25, "no contacts on SIM, save contact"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/motorola/simmanager/SIMCommunication;->createContactInSim(Landroid/content/ContentResolver;Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v25

    if-nez v25, :cond_1b

    .line 610
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_1a

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_1a
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 612
    :cond_1b
    add-int/lit8 v18, v18, 0x1

    .line 654
    :cond_1c
    :goto_5
    if-eqz v22, :cond_14

    .line 655
    :try_start_9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 619
    :cond_1d
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "need to compare with "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " contacts on SIM"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 622
    const-string v25, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 624
    .restart local v14    # "nameIndexSim":I
    const-string v25, "number"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 627
    .restart local v16    # "numberIndexSim":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "processing contact "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getPosition()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 630
    const/4 v8, 0x0

    .line 631
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 633
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->getSimPeople(Landroid/database/Cursor;)Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;

    move-result-object v23

    .line 634
    .local v23, "toCompareInfo":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->contain(Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 636
    const-string v25, "numbers equal, don\'t copy"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 637
    const/4 v8, 0x1

    .line 642
    :goto_6
    if-nez v8, :cond_1c

    .line 644
    const-string v25, "didn\'t find, copy"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/motorola/simmanager/SIMCommunication;->createContactInSim(Landroid/content/ContentResolver;Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;)Z

    move-result v25

    if-nez v25, :cond_21

    .line 646
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 647
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_1f

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_1f
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 640
    :cond_20
    :try_start_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_1e

    goto :goto_6

    .line 649
    :cond_21
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 657
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "nameIndexSim":I
    .end local v16    # "numberIndexSim":I
    .end local v19    # "simInfo":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    .end local v23    # "toCompareInfo":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    :cond_22
    if-nez v18, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 659
    const/16 v25, 0x1

    .line 807
    if-eqz v24, :cond_23

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_23
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 664
    .end local v20    # "simInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;>;"
    :cond_24
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mTruncateName:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mMaxNameLength:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/simmanager/PBUtils;->getAllContactsForIdentity(Landroid/content/ContentResolver;ILandroid/content/Context;ZI)Landroid/database/Cursor;

    move-result-object v24

    .line 666
    if-eqz v24, :cond_25

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v25

    if-eqz v25, :cond_25

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-nez v25, :cond_28

    .line 668
    :cond_25
    if-eqz v24, :cond_26

    .line 669
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 671
    :cond_26
    const/16 v25, 0x1

    .line 807
    if-eqz v24, :cond_27

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_27
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 674
    :cond_28
    :try_start_c
    const-string v25, "display_name"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 675
    .local v13, "nameIndexPhone":I
    const-string v25, "phone_number"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 679
    .local v15, "numberIndexPhone":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SIMCommunication;->getAllContactsFromSIM(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v22

    .line 681
    if-eqz v22, :cond_2a

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v25

    if-eqz v25, :cond_2a

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-nez v25, :cond_31

    .line 684
    :cond_2a
    if-eqz v22, :cond_2b

    .line 685
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 687
    :cond_2b
    const-string v25, "no contacts on SIM, save contact"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/motorola/simmanager/SIMCommunication;->saveContactToSIM(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2d

    .line 691
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 692
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_2c

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_2c
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 694
    :cond_2d
    add-int/lit8 v18, v18, 0x1

    .line 745
    :cond_2e
    :goto_7
    if-eqz v22, :cond_2f

    .line 746
    :try_start_d
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 747
    :cond_2f
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_29

    .line 748
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 749
    if-nez v18, :cond_0

    .line 750
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 751
    const/16 v25, 0x1

    .line 807
    if-eqz v24, :cond_30

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_30
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 701
    :cond_31
    :try_start_e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "need to compare with "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " contacts on SIM"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 704
    const-string v25, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 706
    .restart local v14    # "nameIndexSim":I
    const-string v25, "number"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 709
    .restart local v16    # "numberIndexSim":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "processing contact "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getPosition()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 712
    const/4 v8, 0x0

    .line 713
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 714
    const/16 v21, 0x0

    .line 716
    .local v21, "simName":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 717
    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SIMCommunication;->checkSIMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/simmanager/SMUtils;->compareNames(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_34

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/motorola/simmanager/SMUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_34

    .line 723
    const-string v25, "numbers equal, don\'t copy"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 724
    const/4 v8, 0x1

    .line 729
    :goto_8
    if-nez v8, :cond_2e

    .line 731
    const-string v25, "didn\'t find, copy"

    invoke-static/range {v25 .. v25}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/motorola/simmanager/SIMCommunication;->saveContactToSIM(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_35

    .line 736
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 737
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 738
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_33

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_33
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 727
    :cond_34
    :try_start_f
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_32

    goto :goto_8

    .line 740
    :cond_35
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 766
    .end local v13    # "nameIndexPhone":I
    .end local v14    # "nameIndexSim":I
    .end local v15    # "numberIndexPhone":I
    .end local v16    # "numberIndexSim":I
    .end local v18    # "realSaveCount":I
    .end local v21    # "simName":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-nez v25, :cond_37

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 768
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_36

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_36
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 773
    :cond_37
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 774
    .restart local v11    # "idIndexSim":I
    const/4 v8, 0x0

    .line 776
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, p1

    if-ne v0, v1, :cond_3c

    .line 777
    const/4 v8, 0x1

    .line 784
    :goto_9
    const/4 v7, 0x0

    .line 785
    .local v7, "email":Ljava/lang/String;
    sget-boolean v25, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v25, :cond_39

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v26, v0

    const-string v27, "emails"

    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 787
    :cond_39
    if-eqz v8, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v27, v0

    const-string v28, "name"

    invoke-interface/range {v27 .. v28}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v28, v0

    const-string v29, "number"

    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v7}, Lcom/motorola/simmanager/SIMCommunication;->deleteContactFromSIM(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v25

    if-nez v25, :cond_0

    .line 796
    :cond_3a
    const/16 v25, 0x0

    .line 807
    if-eqz v24, :cond_3b

    .line 808
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_3b
    if-eqz v22, :cond_3

    .line 810
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 780
    .end local v7    # "email":Ljava/lang/String;
    :cond_3c
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result v25

    if-nez v25, :cond_38

    goto :goto_9

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getSimPeople(Landroid/database/Cursor;)Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, -0x1

    .line 931
    new-instance v4, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;

    invoke-direct {v4}, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;-><init>()V

    .line 932
    .local v4, "info":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    const-string v8, "name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    .line 933
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v6, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v8, Lcom/motorola/simmanager/SIMCommunication;->COL_NUMBER_EXT:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 935
    sget-object v8, Lcom/motorola/simmanager/SIMCommunication;->COL_NUMBER_EXT:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 936
    .local v3, "idx":I
    if-ne v3, v9, :cond_2

    .line 941
    .end local v3    # "idx":I
    :cond_0
    iput-object v6, v4, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    .line 943
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v1, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :goto_1
    sget-object v8, Lcom/motorola/simmanager/SIMCommunication;->COL_EMAIL_EXT:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 945
    sget-object v8, Lcom/motorola/simmanager/SIMCommunication;->COL_EMAIL_EXT:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 946
    .restart local v3    # "idx":I
    if-ne v3, v9, :cond_3

    .line 960
    .end local v3    # "idx":I
    :cond_1
    iput-object v1, v4, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    .line 961
    return-object v4

    .line 939
    .end local v1    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "idx":I
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .restart local v1    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 950
    .local v7, "raw_em":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 944
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 953
    :cond_5
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "em":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v8, v0

    if-ge v5, v8, :cond_4

    .line 955
    aget-object v8, v0, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 956
    aget-object v8, v0, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 163
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 137
    :cond_1
    const-string v1, "gsm.mot.usim.support.anr"

    invoke-static {v1}, Lcom/motorola/simmanager/SMSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const/16 v1, 0x28

    sput v1, Lcom/motorola/simmanager/ImportExportActivity;->PHONE_MAX_LENGHT:I

    .line 140
    :cond_2
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    .line 141
    const-string v1, "values"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I

    .line 142
    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountName:Ljava/lang/String;

    .line 143
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAccountType:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I

    array-length v1, v1

    iput v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I

    .line 145
    iput v4, p0, Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I

    .line 146
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 147
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 148
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 149
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "%1d/%1d"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 153
    new-instance v1, Lcom/motorola/simmanager/ImportExportActivity$Worker;

    invoke-direct {v1, p0}, Lcom/motorola/simmanager/ImportExportActivity$Worker;-><init>(Lcom/motorola/simmanager/ImportExportActivity;)V

    iput-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    .line 155
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;

    .line 157
    iget v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mMode:I

    if-ne v1, v3, :cond_3

    .line 158
    new-instance v1, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;-><init>(Lcom/motorola/simmanager/ImportExportActivity;Lcom/motorola/simmanager/ImportExportActivity$1;)V

    iput-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameChecker:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    .line 159
    iget-object v1, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameChecker:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    new-array v2, v3, [Landroid/net/Uri;

    sget-object v3, Lcom/motorola/simmanager/ImportExportActivity;->URI_ADN_NAME_LENGTH:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 161
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ImportExportActivity$Worker;->cancel()V

    .line 175
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ImportExportActivity$Worker;->destroy()V

    .line 176
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameChecker:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameChecker:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 181
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameChecker:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->destroy()V

    .line 182
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameChecker:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 192
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 197
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 202
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameProgressDialog:Landroid/app/ProgressDialog;

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 207
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 211
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 212
    iput-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity;->mNameAlertDialog:Landroid/app/AlertDialog;

    .line 214
    :cond_7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 818
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ImportExportActivity$Worker;->cancel()V

    .line 824
    const/4 v0, 0x1

    .line 826
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
