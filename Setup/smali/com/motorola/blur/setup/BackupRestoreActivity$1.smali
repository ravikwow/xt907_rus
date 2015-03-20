.class Lcom/motorola/blur/setup/BackupRestoreActivity$1;
.super Landroid/os/Handler;
.source "BackupRestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/BackupRestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BackupRestoreActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$1;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, -0x1

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    const-string v0, "RestoreActivity"

    const-string v1, "Unexpected state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$1;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 45
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$1;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 48
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$1;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 40
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$1;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
