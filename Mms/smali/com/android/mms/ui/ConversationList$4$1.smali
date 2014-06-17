.class Lcom/android/mms/ui/ConversationList$4$1;
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
    .line 328
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$4$1;->this$1:Lcom/android/mms/ui/ConversationList$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$4$1;->this$1:Lcom/android/mms/ui/ConversationList$4;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    const-class v2, Lcom/android/mms/ui/WarnOfStorageLimitsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$4$1;->this$1:Lcom/android/mms/ui/ConversationList$4;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method
