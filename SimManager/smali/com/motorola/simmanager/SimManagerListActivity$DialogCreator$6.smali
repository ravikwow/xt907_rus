.class Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$6;
.super Ljava/lang/Object;
.source "SimManagerListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->createConfirmationDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$6;->this$1:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 473
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 474
    return-void
.end method
