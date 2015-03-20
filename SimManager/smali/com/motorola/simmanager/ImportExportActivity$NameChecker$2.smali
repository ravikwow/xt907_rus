.class Lcom/motorola/simmanager/ImportExportActivity$NameChecker$2;
.super Ljava/lang/Object;
.source "ImportExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/ImportExportActivity$NameChecker;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker$2;->this$1:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker$2;->this$1:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mTruncateName:Z
    invoke-static {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$1902(Lcom/motorola/simmanager/ImportExportActivity;Z)Z

    .line 1053
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1054
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker$2;->this$1:Lcom/motorola/simmanager/ImportExportActivity$NameChecker;

    iget-object v0, v0, Lcom/motorola/simmanager/ImportExportActivity$NameChecker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const/4 v1, 0x4

    # invokes: Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V
    invoke-static {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$300(Lcom/motorola/simmanager/ImportExportActivity;I)V

    .line 1055
    return-void
.end method
