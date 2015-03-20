.class final Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/motorola/contacts/list/OnPhoneNumberMultiplePickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberMultiplePickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/ContactSelectionActivity$1;

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public isSelectAllSupported()Z
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public onDataLoadingCompletedAction()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # invokes: Lcom/android/contacts/activities/ContactSelectionActivity;->configureSelectUnSelectButton()Z
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$900(Lcom/android/contacts/activities/ContactSelectionActivity;)Z

    .line 760
    return-void
.end method

.method public onHomeInActionBarSelected()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 0
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 744
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 765
    return-void
.end method

.method public onToggleDataAction(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "isChecked"    # Z

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberMultiplePickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/android/contacts/activities/ContactSelectionActivity;->configureSelectUnSelectButton(Landroid/net/Uri;Ljava/lang/Boolean;)V
    invoke-static {v0, p1, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$800(Lcom/android/contacts/activities/ContactSelectionActivity;Landroid/net/Uri;Ljava/lang/Boolean;)V

    .line 755
    return-void
.end method
