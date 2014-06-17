.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 873
    const/16 v0, 0x709

    .line 874
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/mms/data/Conversation;->startDeleteAll(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZ)V

    .line 876
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 881
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/mms/data/Conversation;->startDelete(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZLjava/util/Collection;)V

    goto :goto_0
.end method
