.class Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1702
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1703
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 1704
    iget-wide v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;J)V

    .line 1708
    # getter for: Lcom/android/settings/DataUsageSummary;->mDisableWarningEnable:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1709
    const-wide v1, 0x80000000L

    # invokes: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;J)V

    .line 1713
    :cond_0
    return-void
.end method
