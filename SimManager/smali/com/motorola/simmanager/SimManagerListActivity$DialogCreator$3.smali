.class Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$3;
.super Ljava/lang/Object;
.source "SimManagerListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->createNoRecordsAlertDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
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
    .line 440
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$3;->this$1:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator$3;->this$1:Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;

    iget-object v0, v0, Lcom/motorola/simmanager/SimManagerListActivity$DialogCreator;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 443
    return-void
.end method