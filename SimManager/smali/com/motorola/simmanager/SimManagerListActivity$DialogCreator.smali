.class Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;
.super Ljava/lang/Object;
.source "SimManagerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/SimManagerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogCreator"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field final synthetic this$0:Lcom/motorola/simmanager/SimManagerListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/SimManagerListActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$1;

    invoke-direct {v0, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$1;-><init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V

    iput-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 413
    iput-object p2, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mContext:Landroid/content/Context;

    .line 414
    return-void
.end method


# virtual methods
.method createConfirmationDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msgText"    # Ljava/lang/String;
    .param p3, "IconId"    # I

    .prologue
    .line 459
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 462
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 463
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 465
    const v2, 0x7f070045

    new-instance v3, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$5;

    invoke-direct {v3, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$5;-><init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    const v2, 0x7f070046

    new-instance v3, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$6;

    invoke-direct {v3, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$6;-><init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    new-instance v2, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$7;

    invoke-direct {v2, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$7;-><init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    iget-object v2, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 485
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 486
    return-object v1
.end method

.method createNoRecordsAlertDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msgText"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 438
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 440
    const v2, 0x7f070045

    new-instance v3, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$3;

    invoke-direct {v3, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$3;-><init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 446
    new-instance v2, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$4;

    invoke-direct {v2, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$4;-><init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    iget-object v2, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 454
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 455
    return-object v1
.end method

.method createQueryProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3
    .param p1, "msgText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 417
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 420
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 421
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 423
    new-instance v1, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$2;

    invoke-direct {v1, p0}, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$2;-><init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 429
    iget-object v1, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 430
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 431
    return-object v0
.end method
