.class final enum Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
.super Ljava/lang/Enum;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DialAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/dialpad/DialpadFragment$DialAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

.field public static final enum ADDTOCONTACT:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

.field public static final enum SEARCH:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

.field public static final enum SENDMESSAGE:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

.field public static final enum VOICECOMMAND:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

.field public static final enum VOICEMAIL:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    const-string v1, "ADDTOCONTACT"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->ADDTOCONTACT:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 212
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    const-string v1, "SENDMESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->SENDMESSAGE:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 213
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    const-string v1, "VOICECOMMAND"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->VOICECOMMAND:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 214
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->SEARCH:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 215
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    const-string v1, "VOICEMAIL"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->VOICEMAIL:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    .line 210
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->ADDTOCONTACT:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->SENDMESSAGE:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->VOICECOMMAND:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->SEARCH:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->VOICEMAIL:Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->$VALUES:[Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

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
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
    .locals 1

    .prologue
    .line 210
    const-class v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/dialpad/DialpadFragment$DialAction;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/android/contacts/dialpad/DialpadFragment$DialAction;->$VALUES:[Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/dialpad/DialpadFragment$DialAction;

    return-object v0
.end method
