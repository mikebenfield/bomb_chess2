// The 'bomb_chess2' program.
program bomb_chess2.aleo {

    const EMPTY: field = 0field;
    const W_PAWN: field = 1field;
    const W_ROOK: field = 2field;
    const W_KNIGHT: field = 3field;
    const W_BISHOP: field = 4field;
    const W_QUEEN: field = 5field;
    const W_KING: field = 6field;
    const B_PAWN: field = 7field;
    const B_ROOK: field = 8field;
    const B_KNIGHT: field = 9field;
    const B_BISHOP: field = 10field;
    const B_QUEEN: field = 11field;
    const B_KING: field = 12field;

    struct Board {
        pieces1: [field; 32];
        pieces2: [field; 32];
    }

    function access(board: Board, i: field) -> field {
        if i == 0field {
            return board.pieces1[0u32];
        } else if i == 1field {
            return board.pieces1[1u32];
        } else if i == 2field {
            return board.pieces1[2u32];
        } else if i == 3field {
            return board.pieces1[3u32];
        } else if i == 4field {
            return board.pieces1[4u32];
        } else if i == 5field {
            return board.pieces1[5u32];
        } else if i == 6field {
            return board.pieces1[6u32];
        } else if i == 7field {
            return board.pieces1[7u32];
        } else if i == 8field {
            return board.pieces1[8u32];
        } else if i == 9field {
            return board.pieces1[9u32];
        } else if i == 10field {
            return board.pieces1[10u32];
        } else if i == 11field {
            return board.pieces1[11u32];
        } else if i == 12field {
            return board.pieces1[12u32];
        } else if i == 13field {
            return board.pieces1[13u32];
        } else if i == 14field {
            return board.pieces1[14u32];
        } else if i == 15field {
            return board.pieces1[15u32];
        } else if i == 16field {
            return board.pieces1[16u32];
        } else if i == 17field {
            return board.pieces1[17u32];
        } else if i == 18field {
            return board.pieces1[18u32];
        } else if i == 19field {
            return board.pieces1[19u32];
        } else if i == 20field {
            return board.pieces1[20u32];
        } else if i == 21field {
            return board.pieces1[21u32];
        } else if i == 22field {
            return board.pieces1[22u32];
        } else if i == 23field {
            return board.pieces1[23u32];
        } else if i == 24field {
            return board.pieces1[24u32];
        } else if i == 25field {
            return board.pieces1[25u32];
        } else if i == 26field {
            return board.pieces1[26u32];
        } else if i == 27field {
            return board.pieces1[27u32];
        } else if i == 28field {
            return board.pieces1[28u32];
        } else if i == 29field {
            return board.pieces1[29u32];
        } else if i == 30field {
            return board.pieces1[30u32];
        } else if i == 31field {
            return board.pieces1[31u32];
        } else if i == 32field {
            return board.pieces2[0u32];
        } else if i == 33field {
            return board.pieces2[1u32];
        } else if i == 34field {
            return board.pieces2[2u32];
        } else if i == 35field {
            return board.pieces2[3u32];
        } else if i == 36field {
            return board.pieces2[4u32];
        } else if i == 37field {
            return board.pieces2[5u32];
        } else if i == 38field {
            return board.pieces2[6u32];
        } else if i == 39field {
            return board.pieces2[7u32];
        } else if i == 40field {
            return board.pieces2[8u32];
        } else if i == 41field {
            return board.pieces2[9u32];
        } else if i == 42field {
            return board.pieces2[10u32];
        } else if i == 43field {
            return board.pieces2[11u32];
        } else if i == 44field {
            return board.pieces2[12u32];
        } else if i == 45field {
            return board.pieces2[13u32];
        } else if i == 46field {
            return board.pieces2[14u32];
        } else if i == 47field {
            return board.pieces2[15u32];
        } else if i == 48field {
            return board.pieces2[16u32];
        } else if i == 49field {
            return board.pieces2[17u32];
        } else if i == 50field {
            return board.pieces2[18u32];
        } else if i == 51field {
            return board.pieces2[19u32];
        } else if i == 52field {
            return board.pieces2[20u32];
        } else if i == 53field {
            return board.pieces2[21u32];
        } else if i == 54field {
            return board.pieces2[22u32];
        } else if i == 55field {
            return board.pieces2[23u32];
        } else if i == 56field {
            return board.pieces2[24u32];
        } else if i == 57field {
            return board.pieces2[25u32];
        } else if i == 58field {
            return board.pieces2[26u32];
        } else if i == 59field {
            return board.pieces2[27u32];
        } else if i == 60field {
            return board.pieces2[28u32];
        } else if i == 61field {
            return board.pieces2[29u32];
        } else if i == 62field {
            return board.pieces2[30u32];
        } else if i == 63field {
            return board.pieces2[31u32];
        }

        assert(false);
        return 0field;
    }

    transition main(public a: u32, b: u32) -> u32 {
        let c: u32 = a + b;
        return c;
    }
}
