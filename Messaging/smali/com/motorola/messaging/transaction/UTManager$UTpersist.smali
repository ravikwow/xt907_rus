.class Lcom/motorola/messaging/transaction/UTManager$UTpersist;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTpersist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;
    }
.end annotation


# instance fields
.field mCreateThread:Z

.field mDeleteMmsFromDraft:Z

.field mDeleteSmsFromDraft:Z

.field mDeleteThread:Z

.field mScheduledDelete:I

.field mScheduledPersist:I


# direct methods
.method public constructor <init>(IIZZZZ)V
    .locals 0
    .param p1, "scheduledDelete"    # I
    .param p2, "scheduledPersist"    # I
    .param p3, "deleteThread"    # Z
    .param p4, "deleteSmsFromDraft"    # Z
    .param p5, "deleteMmsFromDraft"    # Z
    .param p6, "createThread"    # Z

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 1425
    iput p1, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mScheduledDelete:I

    .line 1426
    iput p2, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mScheduledPersist:I

    .line 1427
    iput-boolean p3, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mDeleteThread:Z

    .line 1428
    iput-boolean p4, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mDeleteSmsFromDraft:Z

    .line 1429
    iput-boolean p5, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mDeleteMmsFromDraft:Z

    .line 1430
    iput-boolean p6, p0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;->mCreateThread:Z

    .line 1431
    return-void
.end method


# virtual methods
.method public getConversationManager()Lcom/motorola/messaging/conversation/ConversationManager;
    .locals 2

    .prologue
    .line 1434
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/transaction/UTManager$UTpersist$UTConversationManager;-><init>(Lcom/motorola/messaging/transaction/UTManager$UTpersist;Lcom/motorola/messaging/transaction/UTManager$1;)V

    return-object v0
.end method
