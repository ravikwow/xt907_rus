.class Lcom/motorola/blur/setup/BackupRestoreActivity$4;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 106
    iput-object p1, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$4;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/motorola/blur/setup/BackupRestoreActivity$4;->this$0:Lcom/motorola/blur/setup/BackupRestoreActivity;

    # invokes: Lcom/motorola/blur/setup/BackupRestoreActivity;->performRestore()V
    invoke-static {v0}, Lcom/motorola/blur/setup/BackupRestoreActivity;->access$400(Lcom/motorola/blur/setup/BackupRestoreActivity;)V

    .line 110
    return-void
.end method
