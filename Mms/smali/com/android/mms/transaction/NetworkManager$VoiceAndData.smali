.class public final enum Lcom/android/mms/transaction/NetworkManager$VoiceAndData;
.super Ljava/lang/Enum;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoiceAndData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/NetworkManager$VoiceAndData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

.field public static final enum NONE:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

.field public static final enum NOT_SUPPORTED:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

.field public static final enum SUPPORTED:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->NONE:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    const-string v1, "SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->SUPPORTED:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->NOT_SUPPORTED:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->NONE:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->SUPPORTED:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->NOT_SUPPORTED:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->$VALUES:[Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/NetworkManager$VoiceAndData;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/NetworkManager$VoiceAndData;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->$VALUES:[Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    return-object v0
.end method
