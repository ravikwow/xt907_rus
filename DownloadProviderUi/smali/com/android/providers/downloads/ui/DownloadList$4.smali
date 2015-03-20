.class Lcom/android/providers/downloads/ui/DownloadList$4;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Lcom/android/providers/downloads/ui/DownloadItem;

    if-nez v0, :cond_0

    .line 351
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 344
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 345
    check-cast p2, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/providers/downloads/ui/DownloadItem;->toggle()V

    goto :goto_0

    .line 347
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$1000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 348
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v1

    # invokes: Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$900(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    goto :goto_0
.end method
