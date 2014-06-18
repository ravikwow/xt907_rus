.class public Lcom/android/contacts/calllog/ClearCallLogDialog;
.super Landroid/app/DialogFragment;
.source "ClearCallLogDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 39
    new-instance v0, Lcom/android/contacts/calllog/ClearCallLogDialog;

    invoke-direct {v0}, Lcom/android/contacts/calllog/ClearCallLogDialog;-><init>()V

    .line 40
    .local v0, "dialog":Lcom/android/contacts/calllog/ClearCallLogDialog;
    const-string v1, "deleteCallLog"

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/calllog/ClearCallLogDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/contacts/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 46
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/contacts/calllog/ClearCallLogDialog$1;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/ClearCallLogDialog$1;-><init>(Lcom/android/contacts/calllog/ClearCallLogDialog;Landroid/content/ContentResolver;)V

    .line 69
    .local v0, "okListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b007d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
