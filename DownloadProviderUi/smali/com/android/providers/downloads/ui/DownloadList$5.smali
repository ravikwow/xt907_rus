.class Lcom/android/providers/downloads/ui/DownloadList$5;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;J)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->val$downloadId:J

    # invokes: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$1500(Lcom/android/providers/downloads/ui/DownloadList;J)V

    .line 709
    return-void
.end method
