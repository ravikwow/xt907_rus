.class Lcom/motorola/simmanager/ImportExportActivity$6;
.super Ljava/lang/Object;
.source "ImportExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/ImportExportActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/ImportExportActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity$6;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$6;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$100(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 435
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$6;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mWorker:Lcom/motorola/simmanager/ImportExportActivity$Worker;
    invoke-static {v0}, Lcom/motorola/simmanager/ImportExportActivity;->access$200(Lcom/motorola/simmanager/ImportExportActivity;)Lcom/motorola/simmanager/ImportExportActivity$Worker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/simmanager/ImportExportActivity$Worker;->cancel()V

    .line 436
    return-void
.end method
