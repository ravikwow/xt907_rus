.class Lcom/android/contacts/activities/ContactSelectionActivity$4$1$1;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/contacts/activities/ContactSelectionActivity$4$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity$4$1;)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1$1;->this$2:Lcom/android/contacts/activities/ContactSelectionActivity$4$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1$1;->this$2:Lcom/android/contacts/activities/ContactSelectionActivity$4$1;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1$1;->this$2:Lcom/android/contacts/activities/ContactSelectionActivity$4$1;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1121
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1$1;->this$2:Lcom/android/contacts/activities/ContactSelectionActivity$4$1;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4$1;->this$1:Lcom/android/contacts/activities/ContactSelectionActivity$4;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactSelectionActivity$4;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/activities/ContactSelectionActivity;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 1123
    :cond_0
    return-void
.end method
