.class public final enum Lcom/android/contacts/CallDetailActivity$Tasks;
.super Ljava/lang/Enum;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/CallDetailActivity$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/CallDetailActivity$Tasks;

.field public static final enum DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

.field public static final enum MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

.field public static final enum REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

.field public static final enum UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/android/contacts/CallDetailActivity$Tasks;

    const-string v1, "MARK_VOICEMAIL_READ"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

    .line 96
    new-instance v0, Lcom/android/contacts/CallDetailActivity$Tasks;

    const-string v1, "DELETE_VOICEMAIL_AND_FINISH"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    .line 97
    new-instance v0, Lcom/android/contacts/CallDetailActivity$Tasks;

    const-string v1, "REMOVE_FROM_CALL_LOG_AND_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    .line 98
    new-instance v0, Lcom/android/contacts/CallDetailActivity$Tasks;

    const-string v1, "UPDATE_PHONE_CALL_DETAILS"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/contacts/CallDetailActivity$Tasks;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/CallDetailActivity$Tasks;->$VALUES:[Lcom/android/contacts/CallDetailActivity$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/CallDetailActivity$Tasks;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/android/contacts/CallDetailActivity$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CallDetailActivity$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/CallDetailActivity$Tasks;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/contacts/CallDetailActivity$Tasks;->$VALUES:[Lcom/android/contacts/CallDetailActivity$Tasks;

    invoke-virtual {v0}, [Lcom/android/contacts/CallDetailActivity$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/CallDetailActivity$Tasks;

    return-object v0
.end method
