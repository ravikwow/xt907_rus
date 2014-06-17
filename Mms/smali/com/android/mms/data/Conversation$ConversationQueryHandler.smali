.class public Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationQueryHandler"
.end annotation


# instance fields
.field private mDeleteToken:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 824
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 825
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 836
    iget v0, p0, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    if-ne p1, v0, :cond_0

    .line 844
    # getter for: Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 845
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/mms/data/Conversation;->sDeletingThreads:Z
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$702(Z)Z

    .line 850
    # getter for: Lcom/android/mms/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$600()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 851
    monitor-exit v1

    .line 853
    :cond_0
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeleteToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 828
    iput p1, p0, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->mDeleteToken:I

    .line 829
    return-void
.end method
