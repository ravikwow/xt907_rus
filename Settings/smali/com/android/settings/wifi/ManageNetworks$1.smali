.class Lcom/android/settings/wifi/ManageNetworks$1;
.super Ljava/lang/Object;
.source "ManageNetworks.java"

# interfaces
.implements Lcom/android/settings/wifi/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ManageNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ManageNetworks;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 217
    const-string v0, "ManageNetworks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling on drop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    # getter for: Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/wifi/ManageNetworks;->access$100(Lcom/android/settings/wifi/ManageNetworks;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    # getter for: Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$100(Lcom/android/settings/wifi/ManageNetworks;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    # getter for: Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$100(Lcom/android/settings/wifi/ManageNetworks;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/ManageNetworks;->changeAndSavePrio(II)Z

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/ManageNetworks;->access$202(Lcom/android/settings/wifi/ManageNetworks;Z)Z

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$1;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    # invokes: Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/settings/wifi/ManageNetworks;->access$300(Lcom/android/settings/wifi/ManageNetworks;)V

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
