.class Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;
.super Ljava/lang/Thread;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 1

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    .line 540
    const-string v0, "CallLogAdapter.QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->mDone:Z

    .line 541
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 549
    const/4 v1, 0x0

    .line 552
    .local v1, "needRedraw":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->mDone:Z

    if-eqz v3, :cond_0

    return-void

    .line 556
    :cond_0
    const/4 v2, 0x0

    .line 557
    .local v2, "req":Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$200(Lcom/android/contacts/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 558
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$200(Lcom/android/contacts/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 559
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$200(Lcom/android/contacts/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;

    move-object v2, v0

    .line 561
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    if-eqz v2, :cond_2

    .line 566
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    iget-object v4, v2, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v7, v2, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->convertNumber:Ljava/lang/String;

    # invokes: Lcom/android/contacts/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/contacts/calllog/CallLogAdapter;->access$300(Lcom/android/contacts/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 571
    :cond_2
    if-eqz v1, :cond_3

    .line 572
    const/4 v1, 0x0

    .line 573
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$400(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 580
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$200(Lcom/android/contacts/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 581
    :try_start_3
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$200(Lcom/android/contacts/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 582
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 583
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->mDone:Z

    .line 545
    return-void
.end method
