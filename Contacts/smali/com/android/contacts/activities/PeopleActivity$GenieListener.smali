.class Lcom/android/contacts/activities/PeopleActivity$GenieListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/motorola/contacts/genie/GenieInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenieListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$GenieListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 2210
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$GenieListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onMultiChoiceMode()V
    .locals 1

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GenieListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mInGenieMode:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GenieListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->dismissGenieMode()V
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$100(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 2222
    :cond_0
    return-void
.end method

.method public onNoContactsToDisplay()V
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GenieListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mInGenieMode:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GenieListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGenieController:Lcom/motorola/contacts/genie/GenieController;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/motorola/contacts/genie/GenieController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GenieListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGenieController:Lcom/motorola/contacts/genie/GenieController;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/motorola/contacts/genie/GenieController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/contacts/genie/GenieController;->showCannotCompleteQuestDialog()V

    .line 2216
    :cond_0
    return-void
.end method
