.class final Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/ContactSelectionActivity$1;

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onHomeInActionBarSelected()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->onBackPressed()V

    .line 779
    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 770
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 775
    return-void
.end method
