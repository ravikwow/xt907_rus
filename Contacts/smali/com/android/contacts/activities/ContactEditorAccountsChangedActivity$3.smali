.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

.field final synthetic val$account:Lcom/android/contacts/model/account/AccountWithDataSet;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->val$account:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->val$account:Lcom/android/contacts/model/account/AccountWithDataSet;

    # invokes: Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 129
    return-void
.end method
