.class Lcom/android/mms/ui/ConversationList$4$3;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$4;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$4;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$4$3;->this$1:Lcom/android/mms/ui/ConversationList$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$4$3;->this$1:Lcom/android/mms/ui/ConversationList$4;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    # invokes: Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)V

    .line 353
    return-void
.end method
