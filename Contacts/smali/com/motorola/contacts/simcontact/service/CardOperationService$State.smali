.class public final enum Lcom/motorola/contacts/simcontact/service/CardOperationService$State;
.super Ljava/lang/Enum;
.source "CardOperationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/simcontact/service/CardOperationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/contacts/simcontact/service/CardOperationService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

.field public static final enum ABSENT:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

.field public static final enum LOADED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

.field public static final enum LOCKED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

.field public static final enum UNKNOWN:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->UNKNOWN:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v3}, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->ABSENT:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->LOCKED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    new-instance v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v5}, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->LOADED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->UNKNOWN:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->ABSENT:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->LOCKED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->LOADED:Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->$VALUES:[Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/contacts/simcontact/service/CardOperationService$State;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    return-object v0
.end method

.method public static values()[Lcom/motorola/contacts/simcontact/service/CardOperationService$State;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->$VALUES:[Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    invoke-virtual {v0}, [Lcom/motorola/contacts/simcontact/service/CardOperationService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/contacts/simcontact/service/CardOperationService$State;

    return-object v0
.end method
