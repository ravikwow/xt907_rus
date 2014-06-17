.class Lcom/android/mms/ui/ComposeMessageActivity$36$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$36;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$36;

.field final synthetic val$list:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$36;Lcom/android/mms/data/ContactList;)V
    .locals 0

    .prologue
    .line 3657
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$36;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$36$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$36$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$36;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 3661
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$36$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$36;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$36;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$36$1;->val$list:Lcom/android/mms/data/ContactList;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 3662
    return-void
.end method
