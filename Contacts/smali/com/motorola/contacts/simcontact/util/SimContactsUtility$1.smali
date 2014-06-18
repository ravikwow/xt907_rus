.class final Lcom/motorola/contacts/simcontact/util/SimContactsUtility$1;
.super Ljava/lang/Object;
.source "SimContactsUtility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1450
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1452
    const/4 v0, 0x0

    # setter for: Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1453
    return-void
.end method
