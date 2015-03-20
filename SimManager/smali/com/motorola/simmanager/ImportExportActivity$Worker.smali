.class public Lcom/motorola/simmanager/ImportExportActivity$Worker;
.super Lcom/motorola/simmanager/UserTask;
.source "ImportExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/ImportExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/simmanager/UserTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsActivityDestroyed:Z

.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/motorola/simmanager/ImportExportActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/simmanager/ImportExportActivity;)V
    .locals 1

    .prologue
    .line 833
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {p0}, Lcom/motorola/simmanager/UserTask;-><init>()V

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->mIsActivityDestroyed:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->mIsCancelled:Z

    .line 844
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->mIsActivityDestroyed:Z

    .line 840
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 862
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found out that  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$400(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contacts need to be processed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMode:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$500(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 866
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$700(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/simmanager/SIMCommunication;->getAllContactsFromSIM(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v3

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$602(Lcom/motorola/simmanager/ImportExportActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 868
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 869
    :cond_0
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 870
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 872
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v2

    .line 877
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$400(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 878
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mProcessingContact:I
    invoke-static {v2, v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$802(Lcom/motorola/simmanager/ImportExportActivity;I)I

    .line 879
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/motorola/simmanager/UserTask;->publishProgress([Ljava/lang/Object;)V

    .line 881
    iget-boolean v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->mIsCancelled:Z

    if-eqz v2, :cond_4

    .line 882
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 885
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$900(Lcom/motorola/simmanager/ImportExportActivity;)[I

    move-result-object v3

    aget v3, v3, v1

    # invokes: Lcom/motorola/simmanager/ImportExportActivity;->processContact(I)Z
    invoke-static {v2, v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$1000(Lcom/motorola/simmanager/ImportExportActivity;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 877
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 888
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process contact with id , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$900(Lcom/motorola/simmanager/ImportExportActivity;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 890
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMode:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$500(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-eq v2, v6, :cond_7

    .line 891
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mUnprocessedContacts:Ljava/util/Vector;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1100(Lcom/motorola/simmanager/ImportExportActivity;)Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mIds:[I
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$900(Lcom/motorola/simmanager/ImportExportActivity;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_7
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMode:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$500(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 894
    const-string v2, "gsm.mot.sim.update.error"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/motorola/simmanager/SMSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 897
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const/4 v3, 0x1

    # setter for: Lcom/motorola/simmanager/ImportExportActivity;->mSimFull:Z
    invoke-static {v2, v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$1202(Lcom/motorola/simmanager/ImportExportActivity;Z)Z

    .line 899
    :cond_8
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 904
    :cond_9
    :try_start_3
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 905
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 909
    :cond_a
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMode:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$500(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-ne v2, v5, :cond_b

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1300(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$400(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mDupIds:I
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$1400(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 910
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 912
    :cond_b
    :try_start_4
    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mMode:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$500(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mContactsDone:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$1300(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mContactsTotal:I
    invoke-static {v2}, Lcom/motorola/simmanager/ImportExportActivity;->access$400(Lcom/motorola/simmanager/ImportExportActivity;)I

    move-result v2

    if-lez v2, :cond_c

    .line 913
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 916
    :cond_c
    const/4 v2, 0x3

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 917
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "ImportExportActivity"

    const-string v3, "Encountered an error while processing contacts "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 920
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 922
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 923
    iget-object v3, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    # getter for: Lcom/motorola/simmanager/ImportExportActivity;->mToDelete:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/ImportExportActivity;->access$600(Lcom/motorola/simmanager/ImportExportActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity$Worker;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->mIsActivityDestroyed:Z

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V
    invoke-static {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$300(Lcom/motorola/simmanager/ImportExportActivity;I)V

    .line 850
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 833
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity$Worker;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->mIsCancelled:Z

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$Worker;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V
    invoke-static {v0, v1}, Lcom/motorola/simmanager/ImportExportActivity;->access$300(Lcom/motorola/simmanager/ImportExportActivity;I)V

    .line 857
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 833
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/simmanager/ImportExportActivity$Worker;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
