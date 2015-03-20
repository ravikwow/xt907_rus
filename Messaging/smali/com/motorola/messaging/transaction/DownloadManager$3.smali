.class Lcom/motorola/messaging/transaction/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/transaction/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/motorola/messaging/transaction/DownloadManager$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/transaction/DownloadManager;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/transaction/DownloadManager;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/motorola/messaging/transaction/DownloadManager$3;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/messaging/transaction/DownloadManager$3;->this$0:Lcom/motorola/messaging/transaction/DownloadManager;

    # getter for: Lcom/motorola/messaging/transaction/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/transaction/DownloadManager;->access$300(Lcom/motorola/messaging/transaction/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0151

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    return-void
.end method
