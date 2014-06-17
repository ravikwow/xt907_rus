.class Lcom/android/mms/ui/ComposeMessageActivity$18;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1966
    if-nez p2, :cond_0

    move-object v1, p1

    .line 1967
    check-cast v1, Lcom/android/mms/ui/RecipientsEditor;

    .line 1968
    .local v1, "editor":Lcom/android/mms/ui/RecipientsEditor;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1969
    .local v0, "contacts":Lcom/android/mms/data/ContactList;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 1971
    .end local v0    # "contacts":Lcom/android/mms/data/ContactList;
    .end local v1    # "editor":Lcom/android/mms/ui/RecipientsEditor;
    :cond_0
    return-void
.end method
