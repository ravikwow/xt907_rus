.class Lcom/android/contacts/editor/GroupMembershipView$1;
.super Ljava/lang/Object;
.source "GroupMembershipView.java"

# interfaces
.implements Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/GroupMembershipView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/GroupMembershipView;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCreated()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView$1;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z
    invoke-static {v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->access$002(Lcom/android/contacts/editor/GroupMembershipView;Z)Z

    .line 434
    return-void
.end method
